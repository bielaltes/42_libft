# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 17:10:25 by baltes-g          #+#    #+#              #
#    Updated: 2022/09/21 12:41:25 by baltes-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_bzero.c		\
		ft_isdigit.c	\
		ft_memmove.c	\
		ft_strlcpy.c	\
		ft_toupper.c	\
		ft_isalnum.c	\
		ft_isprint.c	\
		ft_memset.c		\
		ft_strlen.c		\
		ft_tolower.c	\
		ft_isalpha.c	\
		ft_memchr.c		\
		ft_strchr.c		\
		ft_strncmp.c	\
		ft_isascii.c	\
		ft_memcpy.c		\
		ft_strlcat.c	\
		ft_strrchr.c	\
		ft_strnstr.c	\
		ft_atoi.c		\
		ft_memcmp.c

OBJS	=	$(SRCS:.c=.o)

NAME	=	libft.a

LIB		=	ar rcs

INC		=	libft.h

RM		=	rm -rf

CC		=	gcc
FLAGS	=	-Wall -Wextra -Werror

all:	$(NAME)

$(NAME): 
	${CC} ${CFLAGS} -c -I $(INC) $(SRCS)
	$(LIB) $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re 

