% Test 1: f(x) = e^(x^2) on [0.6, 1] with 5 equally spaced points
x = linspace(0.6, 1, 5);
y = exp(x.^2);

% Create a new figure
figure;

% 1a. Vandermonde Interpolation
disp('Running Vandermonde Interpolation: f(x) = e^x^2');
coeff_vandermonde = vandermonde_interpolation(x, y);
x_vals = linspace(0.6, 1, 100);
y_vals_vandermonde = vandermonde_interpolation_eval(coeff_vandermonde, x_vals);
subplot(3, 2, 1); % Create a 3x2 grid and select subplot 1
plot(x_vals, y_vals_vandermonde, 'r', x, y, 'bo');
title('Vandermonde Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 1b. Lagrange Interpolation
disp('Running Lagrange Interpolation: f(x) = e^x^2');
coeff_lagrange = lagrange_interpolation(x, y);
y_vals_lagrange = lagrange_interpolation_eval(coeff_lagrange, x, x_vals);
subplot(3, 2, 2); % Select subplot 2
plot(x_vals, y_vals_lagrange, 'r', x, y, 'bo');
title('Lagrange Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 1c. Newton Interpolation
disp('Running Newton Interpolation: f(x) = e^x^2');
coeff_newton = newton_interpolation(x, y);
y_vals_newton = newton_interpolation_eval(coeff_newton, x, x_vals);
subplot(3, 2, 3); % Select subplot 3
plot(x_vals, y_vals_newton, 'r', x, y, 'bo');
title('Newton Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 1d. Natural Cubic Spline Interpolation
disp('Running Natural Cubic Spline Interpolation: f(x) = e^x^2');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(3, 2, 4); % Select subplot 4
plot(x_vals, y_vals_spline, 'r', x, y, 'bo');
title('Natural Cubic Spline Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 1e. Complete Cubic Spline Interpolation
disp('Running Complete Cubic Spline Interpolation: f(x) = e^x^2');
coeff_complete_spline = complete_cubic_spline_interpolation(x, y, 0, 0);
y_vals_complete_spline = complete_cubic_spline_interpolation_eval(coeff_complete_spline, x, x_vals);
subplot(3, 2, 5); % Select subplot 5
plot(x_vals, y_vals_complete_spline, 'r', x, y, 'bo');
title('Complete Cubic Spline Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 1f. Not-a-knot Cubic Spline Interpolation
disp('Running Not-a-knot Cubic Spline Interpolation: f(x) = e^x^2');
coeff_notaknot_spline = notaknot_cubic_spline_interpolation(x, y);
y_vals_notaknot_spline = notaknot_cubic_spline_interpolation_eval(coeff_notaknot_spline, x, x_vals);
subplot(3, 2, 6); % Select subplot 6
plot(x_vals, y_vals_notaknot_spline, 'r', x, y, 'bo');
title('Not-a-knot Cubic Spline Interpolation');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% Adjust layout to make the subplots more readable
sgtitle('Comparison of Interpolation Methods: f(x) = e^x^2');

% Test 2: f(x) = 1/(1 + 12x^2) on [-1, 1] with 15 equallly spaced points
x = linspace(-1, 1, 15);
y = 1./(1 + 12*x.^2);

% create a new figure
figure;

% plot interpolating polynomial and the points
% 2a. Vandermonde Interpolation
disp('Running Vandermonde Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_vandermonde = vandermonde_interpolation(x, y);
x_vals = linspace(-1, 1, 100);
y_vals_vandermonde = vandermonde_interpolation_eval(coeff_vandermonde, x_vals);
subplot(3, 2, 1); % Create a 3x2 grid and select subplot 1
plot(x_vals, y_vals_vandermonde, 'r', x, y, 'bo');
title('Vandermonde Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 2b. Lagrange Interpolation
disp('Running Lagrange Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_lagrange = lagrange_interpolation(x, y);
y_vals_lagrange = lagrange_interpolation_eval(coeff_lagrange, x, x_vals);
subplot(3, 2, 2); % Select subplot 2
plot(x_vals, y_vals_lagrange, 'r', x, y, 'bo');
title('Lagrange Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 2c. Newton Interpolation
disp('Running Newton Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_newton = newton_interpolation(x, y);
y_vals_newton = newton_interpolation_eval(coeff_newton, x, x_vals);
subplot(3, 2, 3); % Select subplot 3
plot(x_vals, y_vals_newton, 'r', x, y, 'bo');
title('Newton Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 2d. Natural Cubic Spline Interpolation
disp('Running Natural Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(3, 2, 4); % Select subplot 4
plot(x_vals, y_vals_spline, 'r', x, y, 'bo');
title('Natural Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 2e. Complete Cubic Spline Interpolation
disp('Running Complete Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_complete_spline = complete_cubic_spline_interpolation(x, y, 0, 0);
y_vals_complete_spline = complete_cubic_spline_interpolation_eval(coeff_complete_spline, x, x_vals);
subplot(3, 2, 5); % Select subplot 5
plot(x_vals, y_vals_complete_spline, 'r', x, y, 'bo');
title('Complete Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 2f. Not-a-knot Cubic Spline Interpolation
disp('Running Not-a-knot Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
coeff_notaknot_spline = notaknot_cubic_spline_interpolation(x, y);
y_vals_notaknot_spline = notaknot_cubic_spline_interpolation_eval(coeff_notaknot_spline, x, x_vals);
subplot(3, 2, 6); % Select subplot 6
plot(x_vals, y_vals_notaknot_spline, 'r', x, y, 'bo');
title('Not-a-knot Cubic Spline Interpolation: f(x) = 1/(1 + 12x^2)');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% Adjust layout to make the subplots more readable
sgtitle('Comparison of Interpolation Methods: f(x) = 1/(1 + 12x^2)');

% Test 3: (1994, 67.052), (1995, 68.008), (1996, 69.803), (1997, 72.024), (1998, 73.400), (1999, 72.063), (2000, 74.669), (2001, 74.487), (2002, 74.065), (2003, 76.777)
x = [1994 1995 1996 1997 1998 1999 2000 2001 2002 2003];
y = [67.052 68.008 69.803 72.024 73.400 72.063 74.669 74.487 74.065 76.777];

% create a new figure
figure;

% plot interpolating polynomial and the points
% 3a. Vandermonde Interpolation
disp('Running Vandermonde Interpolation: Given Data Points');
coeff_vandermonde = vandermonde_interpolation(x, y);
x_vals = linspace(1994, 2003, 100);
y_vals_vandermonde = vandermonde_interpolation_eval(coeff_vandermonde, x_vals);
subplot(3, 2, 1); % Create a 3x2 grid and select subplot 1
plot(x_vals, y_vals_vandermonde, 'r', x, y, 'bo');
title('Vandermonde Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 3b. Lagrange Interpolation
disp('Running Lagrange Interpolation: Given Data Points');
coeff_lagrange = lagrange_interpolation(x, y);
y_vals_lagrange = lagrange_interpolation_eval(coeff_lagrange, x, x_vals);
subplot(3, 2, 2); % Select subplot 2
plot(x_vals, y_vals_lagrange, 'r', x, y, 'bo');
title('Lagrange Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 3c. Newton Interpolation
disp('Running Newton Interpolation: Given Data Points');
coeff_newton = newton_interpolation(x, y);
y_vals_newton = newton_interpolation_eval(coeff_newton, x, x_vals);
subplot(3, 2, 3); % Select subplot 3
plot(x_vals, y_vals_newton, 'r', x, y, 'bo');
title('Newton Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 3d. Natural Cubic Spline Interpolation
disp('Running Natural Cubic Spline Interpolation: Given Data Points');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(3, 2, 4); % Select subplot 4
plot(x_vals, y_vals_spline, 'r', x, y, 'bo');
title('Natural Cubic Spline Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 3e. Complete Cubic Spline Interpolation
disp('Running Complete Cubic Spline Interpolation: Given Data Points');
coeff_complete_spline = complete_cubic_spline_interpolation(x, y, 0, 0);
y_vals_complete_spline = complete_cubic_spline_interpolation_eval(coeff_complete_spline, x, x_vals);
subplot(3, 2, 5); % Select subplot 5
plot(x_vals, y_vals_complete_spline, 'r', x, y, 'bo');
title('Complete Cubic Spline Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% 3f. Not-a-knot Cubic Spline Interpolation
disp('Running Not-a-knot Cubic Spline Interpolation: Given Data Points');
coeff_notaknot_spline = notaknot_cubic_spline_interpolation(x, y);
y_vals_notaknot_spline = notaknot_cubic_spline_interpolation_eval(coeff_notaknot_spline, x, x_vals);
subplot(3, 2, 6); % Select subplot 6
plot(x_vals, y_vals_notaknot_spline, 'r', x, y, 'bo');
title('Not-a-knot Cubic Spline Interpolation: Given Data Points');
xlabel('x');
ylabel('y');
legend('Interpolating Polynomial', 'Data Points', 'Location', 'northwest');
legend('boxoff');
grid on;

% Adjust layout to make the subplots more readable
sgtitle('Comparison of Interpolation Methods: Given Data Points');

