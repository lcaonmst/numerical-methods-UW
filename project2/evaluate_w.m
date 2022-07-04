% Function takes the polynomial parameters (beta, gamma, scalars) and point x
% and evaluates the polynomial on that point.
function y = evaluate_w(B, Y, C, x)
	n = columns(C);
	d(n + 1) = 0;
	d(n + 2) = 0;
	Y(n + 2) = 0;
	Y(n + 1) = 0;
	B(n + 1) = 0;
	for i = n:-1:1
		d(i) = C(i) + (x - B(i))*d(i + 1) - Y(i + 1)*d(i + 2);
	endfor
	y = d(1);
endfunction