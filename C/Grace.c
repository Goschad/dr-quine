#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

/*
    out
*/

#define n '\n'
#define q '\"'
#define FT(x)int main(){ FILE *fd; if (!(fd = fopen("Grace_kid.c", "w"))) { write(2, "can't open file\n", 16); return (-1); } char i[]="\\#include"; char t[]="%s <unistd.h>%c%s <stdio.h>%c%s <fcntl.h>%c%c/*%c    out%c*/%c%c#define n '%cn'%c#define q '%c%c'%c#define FT(x)int main(){ FILE *fd; if (!(fd = fopen(%cGrace_kid.c%c, %cw%c))) { write(2, %ccan't open file%cn%c, 16); return (-1); } char i[]=%c%c%s%c; char t[]=%c%s%c; fprintf(fd, t, i + 1, n, i + 1, n, i + 1, n, n, n, n, n, n, *i, n, *i, q, n, q, q, q, q, q, *i, q, q, *i, i, q, q, t, q, n, n, n); }%c%cFT(0)%c"; fprintf(fd, t, i + 1, n, i + 1, n, i + 1, n, n, n, n, n, n, *i, n, *i, q, n, q, q, q, q, q, *i, q, q, *i, i, q, q, t, q, n, n, n); }

FT(0)
