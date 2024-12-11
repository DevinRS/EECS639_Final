% Location #1: dongsi (4Y period)
y_real = [103
79
79
80.2536
3.9984
6
12
10
29
15
42
153
43
30
13
28
9
13
3
2
44
8
81
102
24
23
2
25
4
2
36
20
20
2
14
5
33
];

% Location #1: dongsi M3 (4Y period)
x = linspace(1, 4, 4);
y = [103 43 24 33];
x_vals = linspace(1, 4, 37);

figure;
disp('Running Natural Cubic Spline Interpolation: dongsi M3 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi M3 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M7 (4Y period)
y_real = [3.9984
6
12
10
29
15
42
153
43
30
13
28
9
13
3
2
44
8
81
102
24
23
2
25
4
2
36
20
20
2
14
5
33
32
2
2
2
];
x = linspace(1, 4, 4);
y = [3.9984 9 4 2];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: dongsi M7 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi M7 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M12 (4Y period)
y_real = [29
15
42
153
43
30
13
28
9
13
3
2
44
8
81
102
24
23
2
25
4
2
36
20
20
2
14
5
33
32
2
2
2
2
5
7
16
];
x = linspace(1, 4, 4);
y = [29 44 20 16];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: dongsi M12 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi M12 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);