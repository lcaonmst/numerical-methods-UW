% Funkcja zwraca QAQ^T, takie że k-ta kolumna od k + 2 wiersza jest wyzerowana.
function A = householder_m(A, k)
	v = find_house_m(A([(k+1):rows(A)], k));
	A([(k+1):rows(A)], [1:rows(A)]) = fast_house_mul(v, A([(k+1):rows(A)], [1:rows(A)]));
	A([1:rows(A)], [(k+1):rows(A)]) = fast_house_mul_t(A([1:rows(A)], [(k+1):rows(A)]), v);
endfunction