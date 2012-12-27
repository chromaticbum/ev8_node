-module(ev8_node_path).

-export([
  join/2,
  dirname/2,
  basename/2
  ]).

join(_, Components) ->
  filename:join(Components).

dirname(_, Path) ->
  filename:dirname(Path).

basename(_, Path) ->
  filename:basename(Path).
