parser grammar GeometryParser
    ;

options
{
    tokenVocab = GeometryLexer;
}

problem
    : sourceElements? EOF
    ;

sourceElements
    : (statement)*
    ;

statement
    : function
    | assignStatement
    | expression
    ; 

assignStatement
    : (literalExpression | pointVariable) '=' (identifier | keyword) '(' callParameters? ')'
    ;

expression
    : literalExpression
    | (identifier | keyword) '(' callParameters? ')'
    | pointVariable
    ;

callParameters
    : expression (',' expression)*
    ;

function
    : (identifier | keyword) '(' functionParameters? ')' '{'
        (blockExpression)
    '}'
    ;

functionParameters
    : literalExpression (',' literalExpression)*
    ;

blockExpression
    : (blockStatement)*
    ;

blockStatement
    : assignStatement
    | expression
    ;

pointVariable
    : '$' INTEGER_LITERAL
    ;

identifier
    : NON_KEYWORD_IDENTIFIER
    ;

literalExpression
    : TRIANGLE_LITERAL
    | POINT_LITERAL
    | line_literal
    | ray_literal
    | circle_literal
    ;

point
    : (POINT_LITERAL |  pointVariable)
    ;

line_literal
    : point point
    ;

ray_literal
    : point NORMAL_LITERAL
    | point point NORMAL_LITERAL
    ;

circle_literal
    : '(' point ')'
    | '(' point ',' line_literal ')'
    | '(' point point point ')'
    ;

keyword
    : KW_SEGMENT
    | KW_ANGLE
    | KW_IN
    | KW_PERPENDICULAR
    | KW_PARALLEL
    | KW_INTERSECT
    | KW_BISECTOR
    | KW_ANGLE_BISECTOR
    | KW_MIDPOINT
    ;
