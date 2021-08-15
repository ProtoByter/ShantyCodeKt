grammar ShantyCode;

TABS                : '\t'+ -> skip ;
COMMENT             : '//' ~('\r' | '\n')* -> skip ;
DIGIT               : [0-9];
FLOAT               : DIGIT+.DIGIT+;
INTEGER             : DIGIT+;
STRING              : '"' ~('\r' | '\n' | '"')* '"';
LINE_END            : '\r\n' | '\n' ;
BLOCK_END           : 'Leave her, Johnny, leave her' ;
LABEL_DEF           : 'Here be the port of ';
LABEL_GOTO          : 'Dock in port ';
LINE_SKIP_PRE_COND  : 'A line was cut, A ';
LINE_SKIP_POST_COND : ' was freed';
VAR_DECL            : 'Bonny ship the ' ;
VAR_SET_PART_1      : 'For the bonny ship, the ';
VAR_SET_PART_2      : ', goes a-fishing for the ';
VAR_ADD             : ' cheers for the ' ;
VAR_SUB_PART_1      : 'Well don\'t you weep, my bonny ' ;
VAR_SUB_PART_2      : ', though you\'ll be left behind ' ;
FUNC_DECL_START_P1  : 'What will we do with a ' ;
FUNC_DECL_START_P2  : ' sailor?' ;
FUNC_DECL_END       : 'Early in the morning!' ;
FUNC_CALL           : 'The name of the ship was the ';
COMPARISON_BIGGER   : 'man come of whale to ';
COMPARISON_SMALLER  : 'man come in tow to ';
COMPARSION_NEQUAL   : 'man come not in the port of ';
COMPARISON_EQUAL    : 'man come in the port of ';
COMAPRISON          : VALUE (COMPARISON_BIGGER | COMPARISON_SMALLER | COMPARISON_EQUAL | COMPARSION_NEQUAL) VALUE;
IF_START            : 'Soon may the ';
ELSE_START          : 'One day, when the touguing is done';
PRINT               : 'I thought I heard the Old Man say ';
INPUT_PART_1        : 'If you wanna get to Tesco, boys, you\'ve gotta get by ';
INPUT_PART_2        : '!' ;
HO                  : 'Ho, ' ;
NAME                : [a-zA-Z0-9.]+ ;
VALUE               : NAME | STRING | INTEGER | FLOAT ;

ho                  : HO ;
var_decl            : VAR_DECL NAME;
var_set             : VAR_SET_PART_1 NAME VAR_SUB_PART_2 VALUE ;
label_decl          : LABEL_DEF NAME ;
label_goto          : LABEL_GOTO NAME ;
line_skip           : LINE_SKIP_PRE_COND COMAPRISON LINE_SKIP_POST_COND ;
input               : INPUT_PART_1 NAME INPUT_PART_2 ;
print_str           : PRINT STRING ;
print_int           : PRINT INTEGER ;
print_float         : PRINT FLOAT ;
print_var           : PRINT NAME ;
func_call           : FUNC_CALL NAME ;
sc_if               : IF_START COMAPRISON LINE_END sc_program BLOCK_END;
sc_else             : ELSE_START LINE_END sc_program BLOCK_END;
func_decl           : FUNC_DECL_START_P1 NAME FUNC_DECL_START_P2 LINE_END sc_program FUNC_DECL_END;

sc_statement        : ho? (var_decl
                    | var_set
                    | label_decl
                    | label_goto
                    | line_skip
                    | input
                    | print_str
                    | print_int
                    | print_float
                    | print_var
                    | func_call
                    | sc_if
                    | sc_else
                    | func_decl) ;

sc_program          : (sc_statement LINE_END)+;
top_lvl_prog        : sc_program BLOCK_END EOF ;