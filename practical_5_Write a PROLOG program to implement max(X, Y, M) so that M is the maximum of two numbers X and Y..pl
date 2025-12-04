% 5. Write a PROLOG program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.

% If X is greater than or equal to Y, then X is the maximum.
max(X, Y, X) :- X >= Y.

% If Y is greater than X, then Y is the maximum.
max(X, Y, Y) :- X < Y.
