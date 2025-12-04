% 8. Write a PROLOG program to implement power (Num, Pow, Ans) : where Num is raised to the power Pow to get Ans.

power(_, 0, 1).
power(Num, Pow, Ans) :-
    Pow > 0,
    NewPow is Pow - 1,
    power(Num, NewPow, TempAns),
    Ans is TempAns * Num.
