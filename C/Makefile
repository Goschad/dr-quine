NAME_1 =	Colleen
NAME_2 =	Grace
NAME_3 =	Sully

CFLAGS =		-Wall -Wextra -Werror

SRC =		Colleen.c \
			Grace.c \
			Sully.c

OBJS = ${SRC:.c=.o}

all: $(NAME_3)

$(NAME_3): $(OBJS)
	clang $(CFLAGS) Colleen.o -o $(NAME_1)
	clang $(CFLAGS) Grace.o -o $(NAME_2)
	clang $(CFLAGS) Sully.o -o $(NAME_3)

clean:
	rm -rf $(OBJS)
	rm -rf Colleen_tmp
	rm -rf Grace_kid.c
	rm -rf Sully_*

fclean: clean
	rm -rf $(NAME_1) $(NAME_2) $(NAME_3)

re: fclean all
