#include "stdio.h"

/*
	Outside comment
*/
char *generate_string() {
	/*
		Inside comment
	*/
	return("#include %3$cstdio.h%3$c%2$c%2$c/*%2$c%1$cOutside comment%2$c*/%2$cchar *generate_string() {%2$c%1$c/*%2$c%1$c%1$cInside comment%2$c%1$c*/%2$c%1$creturn(%3$c%4$s%3$c);%2$c}%2$c%2$cint main() {%2$c%1$cprintf(generate_string(),9,10,34,generate_string());%2$c}%2$c");
}

int main() {
	printf(generate_string(),9,10,34,generate_string());
}
