% Location #1: huairou (12W period)
x_vals = linspace(1, 12, 92);
y_real = [6
3
4
4
2
3
2
2
4
10
6
2
2
5
19
15
26
32
22
9
32
11
4
17
15
2
3
2
4
2
2
4
12
3
2
3
3
2
12
17
9.5
2
4
4
5
27
28
10
9
2
8
18
7
2
2
3
2
8
11
13
13
16
20
21
23
6
2
2
3
2
2
2
5
2
2
2
5
4
];

% check length of y_real
disp("Length of y_real: " + length(y_real));

% Location #1: dongsi D1 (12W period)
x = linspace(1, 12, 12);
y = [6 2 19 11 4 3 4 2 2 21 2 4];
x_vals = linspace(1, 12, 78);

figure;
disp('Running Natural Cubic Spline Interpolation: huairou D1 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou D1 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: huairou D3 (12W period)
y_real = [4
4
2
3
2
2
4
10
6
2
2
5
19
15
26
32
22
9
32
11
4
17
15
2
3
2
4
2
2
4
12
3
2
3
3
2
12
17
9.5
2
4
4
5
27
28
10
9
2
8
18
7
2
2
3
2
8
11
13
13
16
20
21
23
6
2
2
3
2
2
2
5
2
2
2
5
4
3
2
];
x = linspace(1, 12, 12);
y = [4 10 26 17 2 2 5 18 11 6 5 2];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: huairou D3 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou D3 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: huairou D6 (12W period)
y_real = [3
2
2
4
10
6
2
2
5
19
15
26
32
22
9
32
11
4
17
15
2
3
2
4
2
2
4
12
3
2
3
3
2
12
17
9.5
2
4
4
5
27
28
10
9
2
8
18
7
2
2
3
2
8
11
13
13
16
20
21
23
6
2
2
3
2
2
2
5
2
2
2
5
4
3
2
4
2
3
];
x = linspace(1, 12, 12);
y = [3 2 9 3 3 6.5 10 2 16 3 2 3];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: huairou D6 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('huairou D6 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);
