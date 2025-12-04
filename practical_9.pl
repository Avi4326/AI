% 9. PROLOG program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result.

multi(_, 0, 0).

multi(N1, N2, R) :-
    N2 > 0,
    N_Dec is N2 - 1,
    multi(N1, N_Dec, R_Temp),
    R is N1 + R_Temp.
