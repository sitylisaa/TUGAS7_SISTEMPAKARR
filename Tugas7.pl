hitung_positif([], 0).
hitung_positif([H|T], Jumlah) :-
    H > 0,
    hitung_positif(T, JumlahT),
    Jumlah is JumlahT + 1.
hitung_positif([H|T], Jumlah) :-
    H =< 0,
    hitung_positif(T, Jumlah).

% Predikat untuk memulai penghitungan
mulai_hitung_positif(List) :-
    hitung_positif(List, Jumlah),
    format('Jumlah bilangan bulat positif: ~w', [Jumlah]).
