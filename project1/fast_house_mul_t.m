% Funkcja w czasie kwadratowym przemnaża macierz Householdera z prawej strony, 
% okreslonej przez wektor v.
function P = fast_house_mul_t(A, v)
	P = A - (2 / dot(v, v)) * ((A * v) * v');
endfunction