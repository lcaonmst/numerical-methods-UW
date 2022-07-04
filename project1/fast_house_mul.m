% Funkcja w czasie kwadratowym przemnaża macierz Householdera z lewej strony, 
% okreslonej przez wektor v.
function P = fast_house_mul(v, A)
	P = A - (2 / dot(v, v)) * (v * (v' * A));
endfunction