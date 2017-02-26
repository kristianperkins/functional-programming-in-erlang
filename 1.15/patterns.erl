-module(patterns).
-export([xOrOne/2,xOrTwo/2,xOrThree/2,xOrFour/2,maxThree/3,howManyEqual/3]).

xOrOne(X,Y) ->
    X xor Y.

xOrTwo(X,Y) ->
    X =/= Y and (X or Y).

xOrThree(X,X) ->
    false;
xOrThree(_,_) ->
    true.

xOrFour(true,X) ->
    not X;
xOrFour(false,X) ->
    X.

maxThree(X,Y,Z) ->
    max(max(X,Y),Z).

howManyEqual(_X,_X,_X) ->
    3;
howManyEqual(_X,_X,_Y) ->
    2;
howManyEqual(_X,_Y,_Y) ->
    2;
howManyEqual(_X,_Y,_X) ->
    2;
howManyEqual(_,_,_) ->
    0.
