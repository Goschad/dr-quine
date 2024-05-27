#include <stdio.h>

/*
    out
*/

static void other(void) {}

int main(void)
{
    /*
        in
    */
    char i[]="\\#include <stdio.h>",n='\n',q='"';
    char t[]="%s%c%c/*%c    out%c*/%c%cstatic void other(void) {}%c%cint main(void)%c{%c    /*%c        in%c    */%c    char i[]=%c%c%s%c,n='%cn',q='%c';%c    char t[]=%c%s%c;%c    other();%c    printf(t, i+1, n, n, n, n, n, n, n, n, n, n, n, n, n, q, *i, i, q, *i, q, n, q, t, q, n, n, n, n);%c}%c";
    other();
    printf(t, i+1, n, n, n, n, n, n, n, n, n, n, n, n, n, q, *i, i, q, *i, q, n, q, t, q, n, n, n, n);
}
