% Metoda QR, jako arguement przyjmuje macierz Hessenberga, 
% zwraca wartości własne.
% Jeśli macierz ma wartości zespolone, pętla kończy się z warunku cnt < C, 
% metoda QR nie jest zbieżna dla zespolonych wartości.
function v = qr_method_m(H)
	cnt = 0;
	while (stop_m(H) > 0.000000000001 && cnt < 10000) 
		cnt++;
		[Q, R] = hessenberg_to_qr_m(H);
		H = R * Q;
	endwhile
	H
	v = diag(H);
endfunction
