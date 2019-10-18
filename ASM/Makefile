# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: clanglai <clanglai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/16 14:17:06 by clanglai          #+#    #+#              #
#    Updated: 2019/10/03 16:04:09 by clanglai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=nasm -f macho64
CC2=gcc

COLLEEN_SRC=Colleen.s
GRACE_SRC=Grace.s
SULLY_SRC=Sully.s

COLLEEN_OUT=Colleen
GRACE_OUT=Grace
SULLY_OUT=Sully

COLLEEN_OBJ=$(COLLEEN_SRC:.s=.o)
GRACE_OBJ=$(GRACE_SRC:.s=.o)
SULLY_OBJ=$(SULLY_SRC:.s=.o)

all: colleen grace sully

%.o:%.s
	@$(CC) $<

colleen: $(COLLEEN_OBJ)
	@gcc $(COLLEEN_OBJ) -o $(COLLEEN_OUT)

grace: $(GRACE_OBJ)
	@gcc $(GRACE_OBJ) -o $(GRACE_OUT)

sully: $(SULLY_OBJ)
	@gcc $(SULLY_OBJ) -o $(SULLY_OUT)

clean:
	rm -rf $(COLLEEN_OBJ) $(GRACE_OBJ) $(SULLY_OBJ)

fclean: clean
	rm -rf $(COLLEEN_OUT) $(GRACE_OUT) $(SULLY_OUT)

re:
	fclean all
