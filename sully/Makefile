# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjuery <sjuery@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2018/09/29 19:15:48 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Sully

SRC		= 	Sully.c
SRCASM	=	Sully.s

CFLAG	= -Wall -Wextra -Werror
.SILENT:

all: $(NAME)

$(NAME):
	printf '\033[31m[...] %s\n\033[0m' "Creating Sully (C) Program"
	gcc $(CFLAG) $(SRC) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Sully (C) Program"

Sullyasm:
	printf '\033[31m[...] %s\n\033[0m' "Creating Sully (ASM) Program"
	gcc $(CFLAG) $(SRCASM) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Sully (ASM) Program"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Sully Program"
	/bin/rm -f $(NAME)
	rm -rf Sully_*
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Sully Program"

fclean: clean

re: fclean all

.PHONY: clean fclean re all test
