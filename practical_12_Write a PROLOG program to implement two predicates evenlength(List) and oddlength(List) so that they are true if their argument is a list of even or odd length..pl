% 12. Write a PROLOG program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively.

evenlength([]).
evenlength([_,_|T]) :-
    evenlength(T).

oddlength([_]).
oddlength([_,_|T]) :-
    oddlength(T).
