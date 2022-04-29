% program P
arc(a,b).
arc(b,c).
path(X,X).
path(X,Y):-arc(X,Z),path(Z,Y).

% program nat
nat(0).
nat(X) :- nat(Y), X is Y+1.