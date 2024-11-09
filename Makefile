# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amejia <amejia@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/27 19:16:14 by amejia            #+#    #+#              #
#    Updated: 2024/11/08 18:43:05 by amejia           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

ASM = nasm

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_read.s ft_write.s

OBJS = ${SRCS:.s=.o}

ASM_FLAGS = -f elf64

all: $(NAME)  

%.o: %.s
	$(ASM) $(ASM_FLAGS) $< -o $@
	ar -crs $(NAME) $@
	
$(NAME): ${OBJS}

clean: 
	rm -f ${OBJS} $(BONUS_OBJS)

fclean: clean
	rm -f ${NAME}

re: fclean all

test: all
	gcc test.c -L. -lasm 
	./a.out
	rm a.out

.PHONY: all clean fclean re