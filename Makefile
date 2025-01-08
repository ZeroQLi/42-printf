NAME = libftprintf.a

COMP = cc

FLAGS = -Wall -Werror -Wextra

SRC = ft_printf.c \
	utils_num.c \
	utils_word.c \
	utils_hex.c

OFILES = $(SRC:%.c=%.o)

all: $(NAME)

%.o: %.c
	$(COMP) $(FLAGS) -o $@ -c $<

$(NAME): $(OFILES)
	ar rcs $(NAME) $(OFILES)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY:	all clean fclean re
