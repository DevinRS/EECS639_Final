function coeff = vandermonde_interpolation_func(x, y)
% Script for finding the Vandermonde Polynomial Interpolant coefficients.
% Inputs:
%   x - Row vector of x-values (nodes)
%   y - Row vector of y-values (function values at the nodes)
% Outputs:
%   coeff - Coefficients of the Vandermonde interpolating polynomial

    % 1. Initialization
    % 1a. initialize the length
    n = length(x);

    % 1b. initialize the first coefficient
    % preaccolate the size of the coefficients
    coeff = zeros(1, n);

    % 2. Construct the Vandermonde Matrix
    V = zeros(n, n);
    for i = 1:n
        V(:, i) = x.^(i-1);
    end

    % 3. Solve the Linear System using LU Decomposition with Partial Pivoting
    [L, U, P] = lu(V);
    y_permuted = P * y';
    coeff = U \ (L \ y_permuted);
    coeff = coeff';

end

% % test the vandermonde interpolation
% x = [0 1 2 3 4];
% y = [1 2 3 6 11];
% coeff = vandermonde_interpolation_func(x, y);
% disp(coeff);