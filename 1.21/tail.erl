-module(tail).
-export([fib/1,fib/3]).

fib(N) ->
    fib(N,0,1).

%%fib(0,1,P) ->
%%    P + 1;
fib(0,P,_) ->
    P;
fib(N,P,Q) when N>0 ->
    fib(N-1,Q,P + Q).


