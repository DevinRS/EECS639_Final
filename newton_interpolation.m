function coeff = newton_interpolation_func(x, y)
% Script for finding the Newton Polynomial Interpolant coefficients.
% Inputs:
%   x - Row vector of x-values (nodes)
%   y - Row vector of y-values (function values at the nodes)
% Outputs:
%   coeff - Coefficients of the Newton interpolating polynomial


    % 1. Initialization
    % 1a. initialize the length
    n = length(x);

    % 1b. initialize the first coefficient
    % preaccolate the size of the coefficients
    coeff = zeros(1, n);
    coeff(1) = y(1);

    % 1c. initialize the divided differences table
    divided_difference = zeros(n-1, n-1);

    % 2. Construct the First-Order Divided Differences
    for i = 1:n-1
        divided_difference(i, 1) = (y(i+1) - y(i)) / (x(i+1) - x(i));
    end

    % 3. Construct the Higher-Order Divided Differences
    for j = 2:n-1
        for i = 1:n-j
            divided_difference(i, j) = (divided_difference(i+1, j-1) - divided_difference(i, j-1)) / (x(i+j) - x(i));
        end
    end

    % 4. Extract the Coefficients
    for i = 2:n
        coeff(i) = divided_difference(1, i-1);
    end

end
