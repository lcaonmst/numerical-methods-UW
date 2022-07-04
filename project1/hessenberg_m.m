% Funkcja sprowadza macierz do postaci Hessenberga zachowując jej wartości własne.
function A = hessenberg_m(A)
	for i = 1:(rows(A) - 2)
		A = householder_m(A, i);
	endfor
endfunction