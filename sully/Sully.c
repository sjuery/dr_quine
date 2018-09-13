#include "stdio.h"
#include "stdlib.h"

char *generate_string() {
	return("#include %3$cstdio.h%3$c%2$c#include %3$cstdlib.h%3$c%2$c%2$cchar *generate_string() {%2$c%1$creturn(%3$c%4$s%3$c);%2$c}%2$c%2$cint main() {%2$c%1$cint ftg = %5$d;%2$c%1$cchar tmp_string[50];%2$c%2$c%1$cif(ftg > 0) {%2$c%1$c%1$csprintf(tmp_string, %3$cSully_%%d.c%3$c, ftg);%2$c%1$c%1$cFILE* file = fopen(tmp_string, %3$cr%3$c);%2$c%1$c%1$cif(!file)%2$c%1$c%1$c%1$cftg++;%2$c%1$c%1$cfclose(file);%2$c%1$c%1$csprintf(tmp_string, %3$cSully_%%d.c%3$c, ftg-1);%2$c%1$c%1$cfile = fopen(tmp_string, %3$cw%3$c);%2$c%1$c%1$cfprintf(file, generate_string(),9,10,34,generate_string(), ftg-1);%2$c%1$c%1$cfclose(file);%2$c%1$c%1$csprintf(tmp_string, %3$cgcc Sully_%%1$d.c -o Sully_%%1$d%3$c, ftg-1);%2$c%1$c%1$csystem(tmp_string);%2$c%1$c%1$csprintf(tmp_string, %3$c./Sully_%%d%3$c, ftg-1);%2$c%1$c%1$csystem(tmp_string);%2$c%1$c}%2$c}%2$c");
}

int main() {
	int ftg = 500000;
	char tmp_string[50];

	if(ftg > 0) {
		sprintf(tmp_string, "Sully_%d.c", ftg);
		FILE* file = fopen(tmp_string, "r");
		if(!file)
			ftg++;
		fclose(file);
		sprintf(tmp_string, "Sully_%d.c", ftg-1);
		file = fopen(tmp_string, "w");
		fprintf(file, generate_string(),9,10,34,generate_string(), ftg-1);
		fclose(file);
		sprintf(tmp_string, "gcc Sully_%1$d.c -o Sully_%1$d", ftg-1);
		system(tmp_string);
		sprintf(tmp_string, "./Sully_%d", ftg-1);
		system(tmp_string);
	}
}
