# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjuery <sjuery@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2018/09/05 12:22:41 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Sully

SRC		= 	Sully.c
SRCPP 	=	Sully.cpp

CFLAG	= -Wall -Wextra -Werror
.SILENT:

all: $(NAME)

$(NAME): $(OBJ)
	printf '\033[31m[...] %s\n\033[0m' "Creating Sully (C) Program"
	gcc $(CFLAG) $(SRC) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Sully (C) Program"

Sullypp: $(OBJPP)
	printf '\033[31m[...] %s\n\033[0m' "Creating Sully (CPP) Program"
	clang++ $(CFLAG) $(SRCPP) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Sully (CPP) Program"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Sully Program"
	/bin/rm -f $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Sully Program"

fclean: clean

re: fclean all

.PHONY: clean fclean re all test
