% Location #1: huairou (4Y period)
y_real = [112
49
81.6816
65
3
3
13
4
51
20
59
165
40
44
3
23
13.5
4
6
2
31
50
69
40
2
36
2
12
3
2
35
10
10
2
10
2
34
];

% Location #1: dongsi M3 (4Y period)
x = linspace(1, 4, 4);
y = [112 40 2 34];
x_vals = linspace(1, 4, 37);

figure;
disp('Running Natural Cubic Spline Interpolation: huairou M3 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou M3 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M7 (4Y period)
y_real = [3
3
13
4
51
20
59
165
40
44
3
23
13.5
4
6
2
31
50
69
40
2
36
2
12
3
2
35
10
10
2
10
2
34
16
2
2
2
];
x = linspace(1, 4, 4);
y = [3 13.5 3 2];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: huairou M7 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou M7 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M12 (4Y period)
y_real = [51
20
59
165
40
44
3
23
13.5
4
6
2
31
50
69
40
2
36
2
12
3
2
35
10
10
2
10
2
34
16
2
2
2
2
2
7
8
];
x = linspace(1, 4, 4);
y = [51 31 10 8];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: huairou M11 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou M11 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);