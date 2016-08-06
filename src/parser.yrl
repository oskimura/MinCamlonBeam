Nonterminals program expr.

Terminals '+'.

Rootsymbol program.
program ->
  expr :
    [$1].
    ['$1'].

expr ->
    op_expr : 
        '$1'.

op_expr ->
 expr op expr :
        {op, ?line('$1'), element(3,'$2'), '$1', '$3'}.
expr ->
    digit : 
        {integer, ?line('$1'), string_to_integer(element(3,'$1'))}.
Erlang code.
-define(line(Tup), element(2, Tup)).

string_to_integer(Str) ->
    case string:to_integer(Str) of
        {Code,_} ->
            Code
    end.

