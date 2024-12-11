% Location #1: huairou (12W period)
x_vals = linspace(1, 12, 92);
y_real = [21
7
2
2
2
4
2
2
2
31
2
2
2
4
15
26
30
26
48
15
29
5
8
21
20
2
5
3
6
4
4
6
28
3
2.5
2
3
5
18
29
5
4
4
3
7
29
35
18
14
5
9
13
11
2
6
2
4
7
22
25
11
18
19
9
23
11
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
7
];

% Location #1: wanliu D1 (12W period)
x = linspace(1, 12, 12);
y = [21 2 3.5 5 6 2 4 5 4 9 2 7];
x_vals = linspace(1, 12, 78);

figure;
disp('Running Natural Cubic Spline Interpolation: wanliu D1 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu D1 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: wanliu D3 (12W period)
y_real = [2
2
2
4
2
2
2
31
2
2
2
4
15
26
30
26
48
15
29
5
8
21
20
2
5
3
6
4
4
6
28
3
2.5
2
3
5
18
29
5
4
4
3
7
29
35
18
14
5
9
13
11
2
6
2
4
7
22
25
11
18
19
9
23
11
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
7
3
12
];
x = linspace(1, 12, 12);
y = [2 31 30 21 4 5 7 13 22 11 2 12];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: wanliu D3 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu D3 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: wanliu D6 (12W period)
y_real = [4
2
2
2
31
2
2
2
4
15
26
30
26
48
15
29
5
8
21
20
2
5
3
6
4
4
6
28
3
2.5
2
3
5
18
29
5
4
4
3
7
29
35
18
14
5
9
13
11
2
6
2
4
7
22
25
11
18
19
9
23
11
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
7
3
12
5
2
2
];
x = linspace(1, 12, 12);
y = [4 2 15 5 3 5 18 6 18 2 2 2];
x_vals = linspace(1, 12, 78);

disp('Running Natural Cubic Spline Interpolation: wanliu D6 (12W period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu D6 (12W period)');
xlabel('Weeks');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);
