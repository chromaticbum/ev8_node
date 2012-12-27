-module(ev8_node_util).

-export([
  error/2
  ]).

error(_, Errors) ->
  {error, {sys_error, Errors}}.
