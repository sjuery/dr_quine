#include"stdio.h"
#define USELESS
#define STRING "#include%3$cstdio.h%3$c%1$c#define USELESS%1$c#define STRING %3$c%2$s%3$c%1$c#define MAIN(x) int main(){FILE*file = fopen(%3$cGrace_kid.c%3$c, %3$cw%3$c);/*Inside comment*/char*s=STRING;fprintf(file,s,10,s,34);}%1$cMAIN()%1$c"
#define MAIN(x) int main(){FILE*file = fopen("Grace_kid.c", "w");/*Inside comment*/char*s=STRING;fprintf(file,s,10,s,34);}
MAIN()
