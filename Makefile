# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 17:10:25 by baltes-g          #+#    #+#              #
#    Updated: 2022/09/23 15:54:53 by baltes-g         ###   ########.fr        #
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
		ft_memcmp.c		\
		ft_calloc.c		\
		ft_strdup.c		\
		ft_substr.c		\
		ft_strjoin.c	\
		ft_strtrim.c	\
		ft_itoa.c		\
		ft_strmapi.c	\
		ft_striteri.c	\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c

OBJS	=	$(SRCS:.c=.o)

NAME	=	libft.a

LIB		=	ar rcs

INC		=	libft.h

RM		=	rm -rf

CC		=	gcc

CFLAGS	=	-Wall -Wextra -Werror

all:	$(NAME)

$(OBJS): %.o:%.c
	@echo "Compilant $@" 
	@$(CC) $(CFLAGS) -I $(INC) -c $< -o $@

$(NAME): $(OBJS)
	@echo "Creant $@"
	@$(LIB) $(NAME) $(OBJS)

clean:
		${RM} ${OBJS}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re 

