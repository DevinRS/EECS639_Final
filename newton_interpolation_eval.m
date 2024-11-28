function y_val = newton_interpolation_eval_func(coeff, x_nodes, x_vals)
    % Evaluate the Newton interpolating polynomial using Horner's method
    % Inputs:
    %   coeff   - Coefficients of the Newton interpolant
    %   x_nodes - The interpolation nodes used to compute the Newton polynomial
    %   x_vals  - Points at which to evaluate the polynomial
    % Outputs:
    %   y_val   - Values of the Newton polynomial at the specified points

    % 1. Initialization
    n = length(coeff);
    m = length(x_vals);
    y_val = zeros(1, m);

    % 2. Evaluate the Newton Polynomial
    % Iterate over each point in x_vals
    for i = 1:m
        % Start with the highest-degree term C_n
        y_val(i) = coeff(end);
        % Loop through the coefficients in reverse order to build-up the polynomial
        for j = n-1:-1:1
            % At each iteration, multiply by (x - x_j) and add the next coefficient
            y_val(i) = y_val(i) * (x_vals(i) - x_nodes(j)) + coeff(j); 
        end
    end
end
