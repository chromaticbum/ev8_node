-module(ev8_node).

-export([
  start/0,
  stop/0,
  new_context/1,
  install/1
  ]).

start() ->
  ev8_require:start(),
  application:start(ev8_node).

stop() ->
  application:stop(ev8_node).

new_context(Vm) ->
  Context = ev8:new_context(Vm),
  ev8:install(Context, [ev8_require, ev8_node]),

  Context.

install(Context) ->
  ev8:set(Context, global, [{<<"global">>, global}]),
  ev8:eval(Context, <<"global.process = require('process');">>),
  ev8:eval(Context, <<"global.console = require('console');">>),
  ev8:eval_file(Context, filename:join(code:priv_dir(ev8_node), "ev8_node.js")).
