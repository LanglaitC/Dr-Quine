#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(){
int i = 5;
char t[15];
char o[15];
char *c = "#include <stdio.h>%c#include <string.h>%c#include <stdlib.h>%cint main(){%cint i = %d;%cchar t[15];%cchar o[15];%cchar *c = %c%s%c;%cif (i) {%cstrcat(t, %cSully_%c);%ct[6] = i + 47;%ct[7] = 0;%cstrcpy(o, t);%cstrcat(t, %c.c%c);%cvoid* fd = fopen(t, %cw%c);%cfprintf(fd, c, 10, 10, 10, 10, i - 1, 10, 10, 10, 34, c, 34, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 34, 37, 37, 37, 34, 10, 10, 10);%cfclose(fd);%cchar cmd[500];%csprintf(cmd, %cgcc -o %cs %cs && ./%cs%c, o, t, o);%csystem(cmd);%c}%c}";
if (i) {
strcat(t, "Sully_");
t[6] = i + 47;
t[7] = 0;
strcpy(o, t);
strcat(t, ".c");
void* fd = fopen(t, "w");
fprintf(fd, c, 10, 10, 10, 10, i - 1, 10, 10, 10, 34, c, 34, 10, 10, 34, 34, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 34, 37, 37, 37, 34, 10, 10, 10);
fclose(fd);
char cmd[500];
sprintf(cmd, "gcc -o %s %s && ./%s", o, t, o);
system(cmd);
}
}