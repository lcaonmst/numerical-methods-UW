% Function takes data about dot product and produces matrix Q (explained in report) 
% and orthogonal base.
function [M, B, Y] = get_orthogonal(x, n)
	m = columns(x);
	M(1, [1:m]) = ones(1, m);
	B(1) = sum(x) / m;
	Y = [];
	if n == 0
		return
	endif
	for i = 1:m
		M(2, i) = x(i) - B(1);
	endfor
	for i = 3:(n+1)
		Y(i - 1) = triple_dot_product(x, M(i - 1, [1:m]), M(i - 2, [1:m])) / dot(M(i - 2, [1:m]), M(i - 2, [1:m]));
		B(i - 1) = triple_dot_product(x, M(i - 1, [1:m]), M(i - 1, [1:m])) / dot(M(i - 1, [1:m]), M(i - 1, [1:m]));
		for j = 1:m 
			M(i, j) = (x(j) - B(i - 1)) * M(i - 1, j) - Y(i - 1) * M(i - 2, j);
		endfor
	endfor

endfunction
