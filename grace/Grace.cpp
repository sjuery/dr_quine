#include "cstdio"
#define USELESS
#define STRING "#include %3$ccstdio%3$c%1$c#define USELESS%1$c#define STRING %3$c%2$s%3$c%1$c#define MAIN(x) int main(){FILE*file = fopen(%3$cGrace_kid.cpp%3$c, %3$cw%3$c);/*ceci est un commentaire*/const char*s=STRING;fprintf(file,s,10,s,34);}%1$cMAIN()%1$c"
#define MAIN(x) int main(){FILE*file = fopen("Grace_kid.cpp", "w");/*ceci est un commentaire*/const char*s=STRING;fprintf(file,s,10,s,34);}
MAIN()
