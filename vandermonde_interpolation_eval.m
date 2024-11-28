function y_val = vandermonde_interpolation_eval_func(coeff, x_vals)
    % Evaluate the Vandermonde interpolation polynomial using Horner's method
    % Inputs:
    %   coeff   - Coefficients of the polynomial (Vandermonde form)
    %   x_vals  - Points at which to evaluate the polynomial
    % Output:
    %   y_val   - Values of the polynomial at the specified points

    % 1. Initialization
    n = length(x_vals);
    degree = length(coeff); % Degree of the polynomial
    y_val = zeros(1, n);

    % 2. Evaluate Using Horner's Method
    % Iterate over each point in x_vals
    for i = 1:n
        % Start with the highest-degree term C_n
        y_val(i) = coeff(end); 
        % Loop through the coefficients in reverse order to build-up the polynomial
        for j = degree-1:-1:1
            % At each iteration, multiply by x and add the next coefficient
            y_val(i) = y_val(i) * x_vals(i) + coeff(j);
        end
    end
end
