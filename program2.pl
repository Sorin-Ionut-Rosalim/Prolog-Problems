minimum(X,Y,Z) :- X<Y.
minimum(X,Y,Y) :- X>Y.

nextPosition((X0,Y0),(X1,Y)) :- if X0=Y0=0,
    y<=0.Y<=X, X<=-Y,
    x1 is X+1.