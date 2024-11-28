function y_val = natural_cubic_spline_eval_func(coeff, x_nodes, x_vals)
    % Evaluates the Natural Cubic Spline at a given point x_val.
    % Inputs:
    %   coeff   - Coefficients of the cubic splines
    %   x_node  - x-values (nodes) of the original data points
    %   x_val   - The x-value(s) where the spline is to be evaluated (scalar or array)
    % Outputs:
    %   y_val   - The corresponding y-value(s) (scalar or array)
    
        % Number of splines
        n = length(x_nodes) - 1;
    
        % Reshape coefficients into matrix form for convenience
        % Each row corresponds to a spline: [a, b, c, d] coefficients
        coeff_matrix = reshape(coeff, 4, n)';
    
        % Initialize the output
        y_val = zeros(size(x_vals));
    
        % Loop through each value in x_val
        for k = 1:length(x_vals)
            x = x_vals(k);
    
            % Identify which spline segment x belongs to
            % Ensure x is within the bounds of x_node
            if x < x_nodes(1) || x > x_nodes(end)
                error('x_val out of bounds.');
            end
    
            % Find the correct segment (between x_node(i) and x_node(i+1))
            for i = 1:n
                if x >= x_nodes(i) && x <= x_nodes(i+1)
                    % Extract coefficients for the spline segment
                    a = coeff_matrix(i, 1);
                    b = coeff_matrix(i, 2);
                    c = coeff_matrix(i, 3);
                    d = coeff_matrix(i, 4);
    
                    % Evaluate the cubic polynomial
                    y_val(k) = a*x^3 + b*x^2 + c*x + d;
                    break;
                end
            end
        end
    end
    