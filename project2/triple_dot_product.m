% Takes 3 vertices and returns the dot product of them.
function v = triple_dot_product(x, y, z)
	v = 0;
	for i = 1:columns(x)
		v += x(i) * y(i) * z(i);
	endfor
endfunction