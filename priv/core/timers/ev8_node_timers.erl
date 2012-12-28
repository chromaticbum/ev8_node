-module(ev8_node_timers).

-export([
  setTimeout/2,
  clearTimeout/2,
  setInterval/2,
  clearInterval/2
  ]).

setTimeout(_, [_Callback, _Ms | _Args]) ->
  <<"setTimeout">>.

clearTimeout(_, [_Timeout]) ->
  ok.

setInterval(_, [_Callback, _Ms | _Args]) ->
  ok.

clearInterval(_, [_Interval]) ->
  ok.
