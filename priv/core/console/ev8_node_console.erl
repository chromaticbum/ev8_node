-module(ev8_node_console).

-export([
  log/2
  ]).

log(_, Args) ->
  io:format("console.log(~p)", [Args]).
