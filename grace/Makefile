# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjuery <sjuery@student.42.us.org>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/31 11:28:46 by sjuery            #+#    #+#              #
#    Updated: 2018/09/28 14:18:45 by sjuery           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= Grace

SRC		= 	Grace.c
SRCASM	=	Grace.s

CFLAG	= -Wall -Wextra -Werror
.SILENT:

all: $(NAME)

$(NAME):
	printf '\033[31m[...] %s\n\033[0m' "Creating Grace (C) Program"
	gcc $(CFLAG) $(SRC) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Grace (C) Program"

Graceasm:
	printf '\033[31m[...] %s\n\033[0m' "Creating Grace (ASM) Program"
	gcc $(CFLAG) $(SRCASM) -o $(NAME)
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Created Grace (ASM) Program"

clean:
	printf '\033[31m[...] %s\n\033[0m' "Cleaning Grace Program"
	/bin/rm -f $(NAME)
	rm -rf Grace_*
	printf '\033[32m[ ✔ ] %s\n\033[0m' "Cleaned Grace Program"

fclean: clean

re: fclean all

.PHONY: clean fclean re all test
