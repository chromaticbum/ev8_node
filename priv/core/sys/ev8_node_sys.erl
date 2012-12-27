-module(ev8_node_sys).

-export([
  error/2
  ]).

error(_, Errors) ->
  {error, {sys_error, Errors}}.
