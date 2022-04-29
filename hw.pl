% EX1
% neighbor(stephan,peter).
% married(stephan,X) :- p(X,doctor), w(X,hospital).
% married(peter,Y) :- p(Y,actress), w(Y,theatre).
% melomaniacs(X) :- senimental(X).
% hunters(X) :- liars(X).
% like(X,Y) :- actress(X), senimental(Y).

% EX2 Last element
lastElem([], false).
lastElem([H|[]],H).
lastElem([_|T],E) :- lastElem(T,E).

% EX3 List sorted
isSorted([]).
isSorted([_]).
isSorted([X,Y|T]) :- X =< Y, isSorted([Y|T]).

% EX4 predicate
elem([E|T],E,T).
elem([H|T],E,[H|T1]) :- elem(T,E,T1).

perm([],[]).
perm([E|T],P) :- perm(T,P1), elem(P,E,P1).

% EX5 sort permutation
psort(L,S) :- perm(L,S), isSorted(S).

% EX6
p(X,Y) :- X =< 0, Y = (X + 1 ) / (X - 1).
p(X,Y) :- X =< 9, Y = (2 * X * X) + sqrt(X).
p(X,Y) :- X > 9, Y = 4 / (X - 5).

% EX7
delElem(_,[],[]).
delElem(X,[X|T],R) :- delElem(X,T,R).
delElem(X,[H|T],R) :- delElem(X,T,R2), append([H], R2, R).

% EX8
noDuplicates([],[]).
noDuplicates([H|T],R) :- member(H, T), !, noDuplicates(T,R). 
noDuplicates([H|T],[H|R]) :- noDuplicates(T,R).
