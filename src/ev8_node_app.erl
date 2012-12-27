-module(ev8_node_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
  ev8_require:add_core_path(
    filename:join(code:priv_dir(ev8_node), "core")),
  ev8_node_sup:start_link().

stop(_State) ->
  ok.
