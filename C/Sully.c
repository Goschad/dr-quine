#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

static int interger_len(int number)
{
    int len = 0;

    while (number >= 10)
    {
        number /= 10;
        len++;
    }
    len++;
    return (len);
}

int main(void)
{
    pid_t   pid;
    FILE    *fd;
    int     len = 0;
    int     index = 5;
    char    n = '\n', q = '\"', p = '%', b = '\\';
    char    *file = NULL;
    char    *exec_file = NULL;
    char    *cmd = NULL;

    if (index - 1 < 0)
        return (0);
    len = strlen("Sully_.c") + interger_len(index - 1) + 1;
    file = malloc(len);
    if (!file)
        return (-1);
    sprintf(file, "Sully_%d.c", index - 1);
    len = strlen("Sully_") + interger_len(index - 1) + 1;
    exec_file = malloc(len);
    if (!exec_file)
        return (free(file), -1);
    sprintf(exec_file, "Sully_%d", index - 1);
    len = strlen("clang  -Wall -Wextra -Werror -o ") + strlen(file) - 2 + strlen(file) + 1;
    cmd = malloc(len);
    if (!cmd)
        return (free(file), free(exec_file), -1);
    sprintf(cmd, "clang %s -Wall -Wextra -Werror -o %s", file, exec_file);
    if (!(fd = fopen(file, "w")))
        return (free(cmd), free(exec_file), free(file), 0);
    free(file);
    len = strlen("./Sully_") + interger_len(index - 1) + 1;
    file = malloc(len);
    if (!file)
        return (fclose(fd), free(cmd), free(exec_file), -1);
    sprintf(file, "./%s", exec_file);
    char t[] = "#include <sys/wait.h>%c#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%c#include <string.h>%c#include <fcntl.h>%c%cstatic int interger_len(int number)%c{%c    int len = 0;%c%c    while (number >= 10)%c    {%c        number /= 10;%c        len++;%c    }%c    len++;%c    return (len);%c}%c%cint main(void)%c{%c    pid_t   pid;%c    FILE    *fd;%c    int     len = 0;%c    int     index = %d;%c    char    n = '%cn', q = '%c%c', p = '%c', b = '%c%c';%c    char    *file = NULL;%c    char    *exec_file = NULL;%c    char    *cmd = NULL;%c%c    if (index - 1 < 0)%c        return (0);%c    len = strlen(%cSully_.c%c) + interger_len(index - 1) + 1;%c    file = malloc(len);%c    if (!file)%c        return (-1);%c    sprintf(file, %cSully_%cd.c%c, index - 1);%c    len = strlen(%cSully_%c) + interger_len(index - 1) + 1;%c    exec_file = malloc(len);%c    if (!exec_file)%c        return (free(file), -1);%c    sprintf(exec_file, %cSully_%cd%c, index - 1);%c    len = strlen(%cclang  -Wall -Wextra -Werror -o %c) + strlen(file) - 2 + strlen(file) + 1;%c    cmd = malloc(len);%c    if (!cmd)%c        return (free(file), free(exec_file), -1);%c    sprintf(cmd, %cclang %cs -Wall -Wextra -Werror -o %cs%c, file, exec_file);%c    if (!(fd = fopen(file, %cw%c)))%c        return (free(cmd), free(exec_file), free(file), 0);%c    free(file);%c    len = strlen(%c./Sully_%c) + interger_len(index - 1) + 1;%c    file = malloc(len);%c    if (!file)%c        return (fclose(fd), free(cmd), free(exec_file), -1);%c    sprintf(file, %c./%cs%c, exec_file);%c    char t[] = %c%s%c;%c    if (fork() == 0)%c    {%c        free(cmd);%c        free(file);%c        free(exec_file);%c        fprintf(fd, t, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, index - 1, n, b, b, q, p, b, b, n, n, n, n, n, n, n, q, q, n, n, n, n , q, p, q, n, q, q, n, n, n, n, q, p, q, n, q, q, n, n, n, n, q, p, p, q, n, q, q, n, n, n, q, q, n, n, n, n, q, p, q, n, q, t, q, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n);%c        fclose(fd);%c        exit(0);%c    }%c    else%c        pid = wait(NULL);%c    system(cmd);%c    system(file);%c    free(file);%c    free(cmd);%c    free(exec_file);%c    fclose(fd);%c    (void)pid;%c    return (0);%c}%c";
    if (fork() == 0)
    {
        free(cmd);
        free(file);
        free(exec_file);
        fprintf(fd, t, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, index - 1, n, b, b, q, p, b, b, n, n, n, n, n, n, n, q, q, n, n, n, n , q, p, q, n, q, q, n, n, n, n, q, p, q, n, q, q, n, n, n, n, q, p, p, q, n, q, q, n, n, n, q, q, n, n, n, n, q, p, q, n, q, t, q, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n, n);
        fclose(fd);
        exit(0);
    }
    else
        pid = wait(NULL);
    system(cmd);
    system(file);
    free(file);
    free(cmd);
    free(exec_file);
    fclose(fd);
    (void)pid;
    return (0);
}
