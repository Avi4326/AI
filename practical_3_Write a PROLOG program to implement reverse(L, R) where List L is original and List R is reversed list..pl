% 3. Write a PROLOG program to implement reverse(L, R) where List L is original and List R is reversed list.

reverse_list(List, ReversedList) :-
    reverse_helper(List, [], ReversedList).

reverse_helper([], ReversedList, ReversedList).

reverse_helper([H|T], Acc, ReversedList) :-
    reverse_helper(T, [H|Acc], ReversedList).
