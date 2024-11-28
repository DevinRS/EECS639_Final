function y_val = lagrange_interpolation_eval_func(coeff, x_nodes, x_val)
% Evaluate the Lagrange interpolating polynomial at x_val
% Inputs:
%   coeff - Coefficients of the Lagrange interpolating polynomial
%   x_nodes - Row vector of x-values (nodes)
%   x_val - Value at which to evaluate the interpolating polynomial
% Outputs:
%   y_val - Value of the interpolating polynomial at x_val

    % 1. Initialization
    n = length(x_nodes);
    y_val = zeros(size(x_val));

    % 2. Evaluate the interpolating polynomial at x_val
    % Loop over each x_val
    for i = 1:length(x_val)
        % Loop over each node
        for j = 1:n
            % numerator is the multiplication of (x_val - x_nodes) except for the j-th node
            numerator = 1;
            denominator = 1;
            for k = 1:n
                if k ~= j
                    numerator = numerator .* (x_val(i) - x_nodes(k));
                    denominator = denominator .* (x_nodes(j) - x_nodes(k));
                end
            end
            y_val(i) = y_val(i) + coeff(j) * numerator / denominator;
        end
    end
