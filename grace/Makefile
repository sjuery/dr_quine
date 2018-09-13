# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjuery <sjuery@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2018/09/05 12:12:11 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Grace

SRC		= 	Grace.c
SRCPP 	=	Grace.cpp

CFLAG	= -Wall -Wextra -Werror
.SILENT:

all: $(NAME)

$(NAME): $(OBJ)
	printf '\033[31m[...] %s\n\033[0m' "Creating Grace (C) Program"
	gcc $(CFLAG) $(SRC) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Grace (C) Program"

Gracepp: $(OBJPP)
	printf '\033[31m[...] %s\n\033[0m' "Creating Grace (CPP) Program"
	clang++ $(CFLAG) $(SRCPP) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Grace (CPP) Program"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Grace Program"
	/bin/rm -f $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Grace Program"

fclean: clean

re: fclean all

.PHONY: clean fclean re all test
