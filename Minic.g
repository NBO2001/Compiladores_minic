grammar Minic;

program: definition definition*;

definition: data_definition | function_definition;

INT: 'int';

data_definition: INT declarator ('=' binary)? (',' declarator)* ';';

declarator: IDENTIFIER;

IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
CONSTANT_INT: [0-9]+;

// Não há função sem retorno
function_definition: INT function_header function_body;

function_header: declarator parameter_list;

parameter_list: '(' (parameter_declaration)? ')';

parameter_declaration: INT declarator (',' INT declarator)* ;

function_body: '{' (data_definition | statement)* '}';

statement: 
    expression ';'
    | 'if' '(' expression ')' statement ('else' statement)?
    | 'while' '(' expression ')' statement
    | 'break' ';'
    | 'continue' ';'
    | 'return' ( expression )? ';';

expression: 
    binary (',' binary)*;

binary:
     IDENTIFIER '=' binary
    |IDENTIFIER '+=' binary
    |IDENTIFIER '-=' binary
    |IDENTIFIER '*=' binary
    |IDENTIFIER '/=' binary
    |IDENTIFIER '%=' binary
    |binary '==' binary
    |binary '!=' binary
    |binary '<' binary
    |binary '<=' binary
    |binary '>=' binary
    |binary '>' binary
    |binary ('+'| '-') binary
    |binary ('*' | '/') binary
    |binary '%' binary
    |unary;

unary:
    '++' IDENTIFIER
    |'--' IDENTIFIER
    |primary;

primary:
    IDENTIFIER
    |CONSTANT_INT
    |'(' expression ')'
    | IDENTIFIER '(' (argument_list)? ')';

argument_list:
    binary (',' binary)*;

WS : [ \t\r\n]+ -> skip ;