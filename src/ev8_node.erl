-module(ev8_node).

-export([
  start/0,
  stop/0
  ]).

start() ->
  ev8_require:start(),
  application:start(ev8_node).

stop() ->
  application:stop(ev8_node).
