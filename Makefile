##
## EPITECH PROJECT, 2025
## Title
## File description:
## Makefile
##

NAME = main
TESTNAME = test

CC = gcc

CFLAGS = -W -Wall -Wextra -std=gnu99
TESTFLAGS = -Wall -Wextra -lcriterion --coverage

SRC = ./main.c \

TESTSRC = ./main.c \
	tests/test.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)
	rm -f $(TESTNAME)
	rm -f main
	rm -f test
	find . -name "*.o" -type f -delete
	rm -f *.gcno *.gcda a.out

fclean: clean
	rm -f $(NAME)

re: fclean all

tests_run:	$(TESTOBJ)
	gcc -o $(TESTNAME) $(TESTSRC) $(TESTCFLAGS)
	./$(TESTNAME)

.PHONY: all clean fclean re tests_run
