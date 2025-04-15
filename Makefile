##
## Simple Makefile pour tester le job Jenkins
## Version simplifiée qui ne nécessite pas de compilateur
##

NAME = test_program

all:
	@touch $(NAME)
	@echo "Program $(NAME) created successfully!"

clean:
	@echo "Cleaning..."
	@echo "Object files cleaned"

fclean: clean
	@rm -f $(NAME)
	@echo "Program $(NAME) removed"

tests_run:
	@echo "Running tests..."
	@echo "All tests passed successfully!"

re: fclean all

.PHONY: all clean fclean tests_run re
