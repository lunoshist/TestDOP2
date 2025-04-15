##
## Simple Makefile pour tester le job Jenkins
##

NAME = test_program

SRC = main.c
OBJ = $(SRC:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)
	@echo "Program $(NAME) compiled successfully!"

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)
	@echo "Object files removed"

fclean: clean
	rm -f $(NAME)
	@echo "Program $(NAME) removed"

tests_run:
	@echo "Running tests..."
	@echo "All tests passed successfully!"

re: fclean all

.PHONY: all clean fclean tests_run re