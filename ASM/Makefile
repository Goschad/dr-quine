NAME_1 = Colleen
NAME_2 = Grace
NAME_3 = Sully

CFLAGS =	-Wall -Wextra -Werror

SRCS =	Colleen.s \
		Grace.s \
		Sully.s

OBJS = $(SRCS:.s=.o)

%.o: %.s
	nasm -f elf64 $< -o $@

all: $(NAME_1) $(NAME_2)

$(NAME_1) : $(OBJS)
	gcc $(CFLAGS) -no-pie -o $(NAME_1) Colleen.o

$(NAME_2) : $(OBJS)
	gcc $(CFLAGS) -no-pie -o $(NAME_2) Grace.o

$(NAME_3) : $(OBJS)
	gcc $(CFLAGS) -no-pie -o $(NAME_3) Sully.o

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME_1) $(NAME_2) $(NAME_3)
	rm -rf $(NAME_2)_kid.s
	rm -rf $(NAME_3)_*

re: fclean all