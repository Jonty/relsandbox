%%%-------------------------------------------------------------------
%% @doc relsandbox public API
%% @end
%%%-------------------------------------------------------------------

-module(relsandbox).

-behaviour(application).

-export([start/0]).
%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start() ->
    application:start(relsandbox).

start(_StartType, _StartArgs) ->
    relsandbox_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
