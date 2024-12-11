% Location #1: dongsi (12W period)
x_vals = linspace(1, 12, 92);
y_real = [24
7
2
5
3
4
2
2
4
35
2
2
3
4
14.5
25
29
48
53
12
28
6
11
25
22
2
2
9
7
2
2
2
38
2
2
3
4
4
25
27
4
3
5
3
7
30
34
14
11
2
8
7
10
2
6
2
2
7
31
11
11
13
17
8
17
7
2
3
4
2
2
2
2
2
2
2
2
2
];

% check length of y_real
disp("Length of y_real: " + length(y_real));

% Location #1: dongsi D1 (12W period)
x = linspace(1, 12, 12);
y = [24 2 4 6 7 3 5 2 2 8 2 2];
x_vals = linspace(1, 12, 78);

figure;
disp('Running Natural Cubic Spline Interpolation: dongsi D1 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi D1 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi D3 (12W period)
y_real = [2
5
3
4
2
2
4
35
2
2
3
4
14.5
25
29
48
53
12
28
6
11
25
22
2
2
9
7
2
2
2
38
2
2
3
4
4
25
27
4
3
5
3
7
30
34
14
11
2
8
7
10
2
6
2
2
7
31
11
11
13
17
8
17
7
2
3
4
2
2
2
2
2
2
2
2
2
2
2
];
x = linspace(1, 12, 12);
y = [2 35 29 25 2 4 7 7 31 7 2 2];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: dongsi D3 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi D3 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi D6 (12W period)
y_real = [4
2
2
4
35
2
2
3
4
14.5
25
29
48
53
12
28
6
11
25
22
2
2
9
7
2
2
2
38
2
2
3
4
4
25
27
4
3
5
3
7
30
34
14
11
2
8
7
10
2
6
2
2
7
31
11
11
13
17
8
17
7
2
3
4
2
2
2
2
2
2
2
2
2
2
2
2
2
2
];
x = linspace(1, 12, 12);
y = [4 3 12 2 2 4 14 6 13 4 2 2];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: dongsi D3 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('dongsi D6 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);