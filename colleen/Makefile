# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjuery <sjuery@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2018/09/12 18:58:35 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Colleen

SRC		= 	Colleen.c
SRCPP 	=	Colleen.cpp
SRCASM	=	Colleen.s

CFLAG	= -Wall -Wextra -Werror
.SILENT:

all: $(NAME)

$(NAME):
	printf '\033[31m[...] %s\n\033[0m' "Creating Colleen (C) Program"
	gcc $(CFLAG) $(SRC) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Colleen (C) Program"

Colleenpp:
	printf '\033[31m[...] %s\n\033[0m' "Creating Colleen (CPP) Program"
	clang++ $(CFLAG) $(SRCPP) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Colleen (CPP) Program"

Colleenasm:
	printf '\033[31m[...] %s\n\033[0m' "Creating Colleen (ASM) Program"
	gcc $(CFLAG) $(SRCASM) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Colleen (ASM) Program"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Colleen Program"
	/bin/rm -f $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Colleen Program"

fclean: clean

re: fclean all

.PHONY: clean fclean re all test
