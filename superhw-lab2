#!/bin/bash

ccode="#include <stdio.h>\n #include <stdlib.h>\n
int main(){ 
FILE *ptr = fopen(\"new.sh\",\"w\"); 
fprintf(ptr, \"%s\", 
\"ccode=\\\" #include <stdio.h> \\\\\\\\\\\\\\\n 
int main(){ 
printf(\\\\\\\\\\\"%s\\\\\\\\\\\",\\\\\\\\\\\"Hello world\\\\\\\\\\\");\\\n 
return 0;}\\\" \\\n 
touch new.c \\\n 
echo \$ccode >> new.c \\\n 
gcc new.c -o new \\\n 
./new\");
fclose(ptr);
system(\"chmod 777 ./new.sh\");
system(\" ./new.sh \");
return 0; } "

touch superhw.c
echo -e $ccode >> superhw.c

gcc superhw.c -o superhw
./superhw
