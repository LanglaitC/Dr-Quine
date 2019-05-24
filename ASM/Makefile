# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: clanglai <clanglai@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/16 14:17:06 by clanglai          #+#    #+#              #
#    Updated: 2019/05/23 14:34:38 by clanglai         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC= nasm -fmacho64
CC2= gcc
COLLEEN_SRC=Colleen.s
COLLEEN_OUT=Colleen
GRACE_SRC=Grace.s
GRACE_OUT=Grace
SULLY_SRC=Sully.s
SULLY_OUT=Sully
OBJ_FILES=	Sully*.o \
			Grace.o \
			Collen.o


all: colleen grace sully

colleen: $(COLLEEN_OUT)
	@$(CC) $(COLLEEN_SRC) && $(CC2) -o $(COLLEEN_OUT) $(COLLEEN_OUT).o 

%.o: %.c
	$(CC) -o $@ -c $<

grace: $(GRACE_OUT)
	@$(CC) $(GRACE_SRC) && $(CC2) -o $(GRACE_OUT) $(GRACE_OUT).o 

sully: $(SULLY_OUT)
	@$(CC) $(SULLY_SRC) && $(CC2) -o $(SULLY_OUT) $(SULLY_OUT).o 

clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -rf $(COLLEEN_OUT) $(GRACE_OUT) $(SULLY_OUT)

re:
	fclean all