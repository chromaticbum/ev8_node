-module(ev8_node_timers).

-export([
  setTimeout/4,
  clearTimeout/2,
  setInterval/4,
  clearInterval/2
  ]).

setTimeout(_, _Callback, _Ms, _Args) ->
  <<"setTimeout">>.

clearTimeout(_, _Timeout) ->
  ok.

setInterval(_, _Callback, _Ms, _Args) ->
  ok.

clearInterval(_, _Interval) ->
  ok.
