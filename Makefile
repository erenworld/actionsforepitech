##
## EPITECH PROJECT, 2025
## Title
## File description:
## Makefile
##

NAME = main

CC = gcc

CFLAGS = -W -Wall -Wextra -std=gnu99

SRC = ./main.c \

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)
	rm -f main
	find . -name "*.o" -type f -delete
	rm -f *.gcno *.gcda a.out

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
