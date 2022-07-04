% Funkcja zwraca pewną odległość danej macierzy od macierzy górnej trójkątnej.
function r = stop_m(A)
	r = 0;
	for i = 2:rows(A)
		for j = 1:(i-1)
			r += A(i, j)^2;
		endfor
	endfor
	r = sqrt(r);
endfunction