%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License
%% at http://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and
%% limitations under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is VMware, Inc.
%% Copyright (c) 2007-2012 VMware, Inc.  All rights reserved.
%%

-module(rabbit_federation_config).
-behaviour(rabbit_cluster_config_item).

-rabbit_boot_step({?MODULE,
                   [{description, "federation config"},
                    {mfa, {rabbit_registry, register,
                           [cluster_config, <<"rabbitmq_federation">>, ?MODULE]}},
                    {requires, rabbit_registry},
                    {enables, recovery}]}).

-export([validate/1]).

validate(Term) ->
    io:format("Validate? ~p~n", [Term]),
    ok.
