lexer grammar GeometryLexer
    ;

KW_SEGMENT: 'segment';
KW_ANGLE: 'angle';
KW_IN: 'in';
KW_PERPENDICULAR: 'perpendicular';
KW_PARALLEL: 'parallel';
KW_INTERSECT: 'intersect';
KW_BISECTOR: 'bisector';
KW_ANGLE_BISECTOR: 'angle_bisector';
KW_MIDPOINT: 'midpoint';

LINE_COMMENT: '//' ~[\r\n]* -> channel (HIDDEN);
WHITESPACE: [\p{Zs}] -> channel(HIDDEN);
NEWLINE: ('\r\n' | [\r\n]) -> channel(HIDDEN);

NON_KEYWORD_IDENTIFIER: [a-z][a-z0-9_]*;

INTEGER_LITERAL
    : DEC_LITERAL
    ;

DEC_LITERAL: DEC_DIGIT+;

NORMAL_LITERAL: [a-z][a-z0-9]+;

POINT_LITERAL
    : [A-Z]
    | [A-Z] '_' ([a-zA-Z0-9_]*)?
    | [A-Z][0-9]+
    | [A-Z][0-9]+ '_' ([a-zA-Z0-9_]*)?
    ;

TRIANGLE_LITERAL
    : [A-Z][A-Z][A-Z]
    ;

fragment DEC_DIGIT: [0-9];

EQ: '=';
UNDERSCORE: '_';
COMMA: ',';
VARIABLE: '$';

LCURLYBRACE: '{';
RCURLYBRACE: '}';
LPAREN: '(';
RPAREN: ')';
