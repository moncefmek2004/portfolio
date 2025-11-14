%{
    #include <stdio.h>
    int yylex(void);
    int yyerror(char *s);
%}

%token IDF CSTE AFF PVG
%start s

%%
S:
    IDF AFF CSTE PVG{ printf("syntaxe correcte\n"); YYACCEPT;}
    ;
%%

int main(void){
    return yyparse();
}

int yywrap(void){
    return 1;
}