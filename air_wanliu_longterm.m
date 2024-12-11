% Location #1: huairou (4Y period)
y_real = [136
87
8
55.692
5.9976
0.8568
18.2784
10
31
21
75
145
110
33
16
23
9
17
7
6
33
6
65
124
30
32
2
18
2
2
27
22
32
2
21
5
46
];

% Location #1: dongsi M3 (4Y period)
x = linspace(1, 4, 4);
y = [136 110 30 46];
x_vals = linspace(1, 4, 37);

figure;
disp('Running Natural Cubic Spline Interpolation: wanliu M3 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 1);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu M3 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M7 (4Y period)
y_real = [5.9976
0.8568
18.2784
10
31
21
75
145
110
33
16
23
9
17
7
6
33
6
65
124
30
32
2
18
2
2
27
22
32
2
21
5
46
24
2
2
2
];
x = linspace(1, 4, 4);
y = [5.9976 9 2 2];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: wanliu M7 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 2);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu M7 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);

% Location #1: dongsi M12 (4Y period)
y_real = [31
21
75
145
110
33
16
23
9
17
7
6
33
6
65
124
30
32
2
18
2
2
27
22
32
2
21
5
46
24
2
2
2
2
11
3
19
];
x = linspace(1, 4, 4);
y = [31 33 32 19];
x_vals = linspace(1, 4, 37);

disp('Running Natural Cubic Spline Interpolation: wanliu M12 (4Y period)');
coeff_spline = natural_cubic_spline_interpolation(x, y);
y_vals_spline = natural_cubic_spline_interpolation_eval(coeff_spline, x, x_vals);
subplot(1, 3, 3);
plot(x_vals, y_vals_spline, 'r', x, y, 'bo', x_vals, y_real, 'g');
title('wanliu M12 (4Y period)');
xlabel('Years');
ylabel('SO2 levels');
legend('Interpolating Polynomial', 'Data Points', 'Real Value', 'Location', 'northwest');
legend('boxoff');
grid on;

% calculate the error
error = norm(y_vals_spline - y_real, 2);
disp("Error: " + error);