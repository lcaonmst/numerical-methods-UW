% Funkcja przeprowadza rozkład QR macierzy Hessenberga.
function [Q, A] = hessenberg_to_qr_m(A)
	Q = eye(rows(A));
	for i = 1:(rows(A) - 1)
		v = find_house_m(A([i:rows(A)], i));
		Q([1:rows(Q)], [i:rows(Q)]) = fast_house_mul_t(Q([1:rows(Q)], [i:rows(Q)]), v);
		A([i:rows(A)], [1:rows(A)]) = fast_house_mul(v, A([i:rows(A)], [1:rows(A)]));
	endfor
endfunction

