% 2. Write a PROLOG program to implement conc(L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.

conc([], L2, L2).

conc([Head|Tail], L2, [Head|L3]) :-
    conc(Tail, L2, L3).
