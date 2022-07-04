% Funkcja znajduje przekształcenie Householdera potrzebne do wyzerowania wektora t od drugiej współrzędnej.
function v = find_house_m(t)
	v = t;
	v(1) += sign_m(v(1)) * sqrt(dot(v, v));
endfunction