Definitions.

DIGIT        = [0-9]
LOWER        = [a-z]
UPPER        = [A-Z]
SPACE = [\s\t\n\r]

Rules.


\+      : {token,{'op',TokenLine, to_atom(TokenChars)}}.
\-      : {token,{'op',TokenLine, to_atom(TokenChars)}}.
\*      : {token,{'op',TokenLine, to_atom(TokenChars)}}.
\/      : {token,{'op',TokenLine, to_atom(TokenChars)}}.

\(            : {token, {'(',  TokenLine}}.
\)            : {token, {')',  TokenLine}}.

{DIGIT}+         : {token, {digit,  TokenLine, TokenChars}}.
Erlang code.

to_atom(Chars) ->
    list_to_atom(Chars).
