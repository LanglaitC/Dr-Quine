# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: clanglai <clanglai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/16 14:17:06 by clanglai          #+#    #+#              #
#    Updated: 2019/05/16 14:38:47 by clanglai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC= gcc -Wall -Wextra -Werror
COLLEEN_SRC=Colleen.c
COLLEEN_OUT=Colleen
GRACE_SRC=Grace.c
GRACE_OUT=Grace
SULLY_SRC=Sully.c
SULLY_OUT=Sully
OBJ_FILES=	Sully*.o \
			Grace.o \
			Collen.o


all: colleen grace sully

colleen: $(COLLEEN_OUT)
	$(CC) -o $(COLLEEN_OUT) $(COLLEEN_SRC)

$(COLLEEN_OUT): $(COLLEEN_SRC)
	$(CC) -o $@ -c $<

grace: $(GRACE_OUT)
	$(CC) -o $(GRACE_OUT) $(GRACE_SRC)

sully: $(SULLY_OUT)
	$(CC) -o $(SULLY_OUT) $(SULLY_SRC)

clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -rf $(COLLEEN_OUT) $(GRACE_OUT) $(SULLY_OUT)

re:
	fclean all