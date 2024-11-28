function coeff = notaknot_cubic_spline_interpolation_func(x, y)
% Script for finding the Not-a-knot Cubic Spline Interpolant coefficients.
% Inputs:
%   x - Row vector of x-values (nodes)
%   y - Row vector of y-values (function values at the nodes)
% Outputs:
%   coeff - Coefficients of the Natural Cubic Spline interpolating polynomial
    
    % 1. Initialization
    n = length(x);
    % We want n-1 splines, and the number of coefficients for each spline is 4
    % coeff = zeros(4*(n - 1), 1);
    % Initialize the A matrix. The number of row and column is equal to the number of coefficients*number of splines
    A = zeros(4*(n - 1), 4*(n - 1));
    % Initialize the b vector. The number of elements is equal to the number of coefficients*number of splines
    b = zeros(4*(n - 1), 1);

    % 2. Evaluate at known points, this will give us the first 2*num_splines equations
    % Loop through each spline
    for i = 1:n-1
        % Evaluate the first 2 equations
        A(2*i - 1, 4*i - 3:4*i) = [x(i)^3, x(i)^2, x(i), 1]; % encode the condition at x(i) for the ith spline
        A(2*i, 4*i - 3:4*i) = [x(i + 1)^3, x(i + 1)^2, x(i + 1), 1]; % encode the condition at x(i+1) for the ith spline
        b(2*i - 1) = y(i); % encode the condition at x(i) for the ith spline
        b(2*i) = y(i + 1); % encode the condition at x(i+1) for the ith spline
    end

    % 2. Evaluate the first derivative at the known points, this will give us the next num_splines-1 equations
    % Loop through each spline
    for i = 1:n-2
        % Evaluate the next equation
        A(2*(n - 1) + i, 4*i - 3:4*i) = [3*x(i + 1)^2, 2*x(i + 1), 1, 0]; % encode the condition at x(i+1) for the ith spline
        A(2*(n - 1) + i, 4*(i + 1) - 3:4*(i + 1)) = [-3*x(i + 1)^2, -2*x(i + 1), -1, 0]; % encode the condition at x(i+1) for the i+1th spline
        b(2*(n - 1) + i) = 0; % encode the condition at x(i+1) for the ith spline
    end

    % 3. Evaluate the second derivative at the known points, this will give us the next num_splines-1 equations
    % Loop through each spline
    for i = 1:n-2
        row_index = 3*(n-1) + i - 1; % Correct row index for the second derivative
        % Populate the matrix A for the second derivative condition
        A(row_index, 4*i - 3:4*i) = [6*x(i + 1), 2, 0, 0];
        A(row_index, 4*(i + 1) - 3:4*(i + 1)) = [-6*x(i + 1), -2, 0, 0];
        b(row_index) = 0; % Corresponding b value
    end

    % 4. Evaluate the not-a-knot spline condition at the first interior point and the last interior point (3rd derivative condition)
    % Populate the matrix A for the not-a-knot spline condition at the first interior point
    row_index = 4*(n - 1) - 1;
    A(row_index, 1:4) = [6, 0, 0, 0];
    A(row_index, 5:8) = [-6, 0, 0, 0];
    b(row_index) = 0; % Corresponding b value
    
    % Populate the matrix A for the not-a-knot spline condition at the last interior point
    row_index = 4*(n - 1);
    A(row_index, 4*(n - 2) - 3:4*(n - 2)) = [6, 0, 0, 0];
    A(row_index, 4*(n - 1) - 3:4*(n - 1)) = [-6, 0, 0, 0];
    b(row_index) = 0; % Corresponding b value
    
    % 5. Solve the system of equations using LU decomposition
    [L, U, P] = lu(A);
    y_permuted = P * b;
    coeff = U \ (L \ y_permuted);
    coeff = coeff';

end