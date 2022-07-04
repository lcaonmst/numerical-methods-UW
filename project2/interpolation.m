% Function takes the handle to a function, the nodes and the maximum degree
% and returns the parameteres of the best polynomial (basis parameters and scalars).
function [B, Y, C] = interpolation(f, x, n)
	m = columns(x);
	n = min(n, m - 1);
	[M, B, Y] = get_orthogonal(x, n);
	M = M';
	for i = 1:(n + 1)
		D(i) = dot(M([1:m], i), M([1:m], i));
	endfor
	for i = 1:m
		b(i, 1) = f(x(i));
	endfor
	b1 = M' * b;
	for i = 1:(n + 1) 
		C(i) = b1(i) / D(i);
	endfor
	disp("Difference:");
	dot(b - M * C', b - M * C')
endfunction