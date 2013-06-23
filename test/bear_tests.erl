%%%
%%% Copyright 2013, Opscode, Inc.
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%


%%%-------------------------------------------------------------------
%%% File:      bear_tests.erl
%%% @author    James Casey <james@opscode.com>
%%%------------------------------------------------------------------

-module(bear_tests).

-include_lib("eunit/include/eunit.hrl").

math_log_test() ->
    ?assertEqual(1, bear:math_log(0)),
    ?assertEqual(1, bear:math_log(0.0)).

inverse_test() ->
    ?assertEqual(1.0, bear:inverse(1)),
    ?assertEqual(0.5, bear:inverse(2)),
    ?assertEqual(2.0, bear:inverse(0.5)),

    ?assertEqual(0, bear:inverse(0)),
    ?assertEqual(0, bear:inverse(0.0)).
