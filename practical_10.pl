% 10. Write a PROLOG program to implement memb(X, L): to check whether X is a member of L or not.

memb(X, [X|_]).
memb(X, [_|T]) :-
    memb(X, T).
