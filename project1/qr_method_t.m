% Metoda QR z przesunięciem, jako arguement przyjmuje macierz Hessenberga, 
% zwraca wartości własne.
% Jeśli macierz ma wartości zespolone, pętla kończy się z warunku cnt < C, 
% metoda QR nie jest zbieżna dla zespolonych wartości.
function v = qr_method_t(H)
	cnt = 0;
	while (stop_m(H) > 0.000000000001 && cnt < 10000) 
		cnt++;
		h = H(rows(H), rows(H));
		if cnt == 1 
			h += 0.5;
		endif
		[Q, R] = hessenberg_to_qr_m(H - eye(rows(H)) * h);
		H = R * Q + eye(rows(H)) * h;
	endwhile
	v = diag(H);
	H
endfunction
