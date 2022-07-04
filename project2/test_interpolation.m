% Functon takes the handle to a function, interval, number of points and maximum degree
% and tests interpolation with uniform and Chebyshev nodes distribution.
function test_interpolation(f, a, b, m, n)
	x1 = a:(b - a)/m:b;
	for i = 1:(m + 1)
		x2(i) = 0.5 * (a + b) + 0.5 * (b - a) * cos((2 * (m + 2 - i) - 1) / (2 * (m+1)) * pi);
	endfor
	disp("Uniform:");
	interpolation(f, x1, n);
	disp("Chebyshev:")
	interpolation(f, x2, n);
endfunction