# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 17:10:25 by baltes-g          #+#    #+#              #
#    Updated: 2022/09/16 18:15:13 by baltes-g         ###   ########.fr        #
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
		ft_strrchr.c

OBJS	=	$(SRCS:.c= .o)

NAME	=	libft.a

LIB		=	ar rcs

INC		=	libft.h

FLAGS	=	-Wall -Wextra -Werror

all:	$(NAME)

$(NAME): $(OBJS) $(INC)
	$(LIB) $(NAME) $(OBJS)

%.c: %.o
	gcc $(FLAGS) -c -o $@ $<

.PHONY: all clean fclean re 

