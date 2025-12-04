% 11. Write a PROLOG program to implement sumlist(L, S) so that S is the sum of a given list L.

sumlist([], 0).
sumlist([H|T], S) :-
    sumlist(T, ST),
    S is H + ST.
