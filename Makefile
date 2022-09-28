# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 17:10:25 by baltes-g          #+#    #+#              #
#    Updated: 2022/09/28 11:50:37 by baltes-g         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_bzero.c			\
		ft_isdigit.c		\
		ft_memmove.c		\
		ft_strlcpy.c		\
		ft_toupper.c		\
		ft_isalnum.c		\
		ft_isprint.c		\
		ft_memset.c			\
		ft_strlen.c			\
		ft_tolower.c		\
		ft_isalpha.c		\
		ft_memchr.c			\
		ft_strchr.c			\
		ft_strncmp.c		\
		ft_isascii.c		\
		ft_memcpy.c			\
		ft_strlcat.c		\
		ft_strrchr.c		\
		ft_strnstr.c		\
		ft_atoi.c			\
		ft_memcmp.c			\
		ft_calloc.c			\
		ft_strdup.c			\
		ft_substr.c			\
		ft_strjoin.c		\
		ft_strtrim.c		\
		ft_itoa.c			\
		ft_strmapi.c		\
		ft_striteri.c		\
		ft_putchar_fd.c		\
		ft_putstr_fd.c		\
		ft_putendl_fd.c		\
		ft_putnbr_fd.c		\
		ft_split.c			\
		
SRCS_BONUS = ft_lstnew.c	\
		ft_lstadd_front.c	\
		ft_lstsize.c		\
		ft_lstlast.c		\
		ft_lstadd_back.c	\
		ft_lstdelone.c		\
		ft_lstclear.c		\
		ft_lstiter.c		\
		ft_lstmap.c			

OBJS	=	$(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

NAME	=	libft.a

LIB		=	ar rcs

INC		=	libft.h

RM		=	rm -f

CC		=	gcc

CFLAGS	=	-Wall -Wextra -Werror

all:	$(NAME)
 
%.o:%.c
	@echo "Compilant $@" 
	@$(CC) $(CFLAGS) -I $(INC) -c $< -o $@

$(NAME): $(OBJS) $(INC)
	@echo "Creant $@"
	@$(LIB) $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJS_BONUS) $(INC)
	@echo "Creant $@"
	@$(LIB) $(NAME) $(OBJS) $(OBJS_BONUS)

clean:
		${RM} ${OBJS} $(OBJS_BONUS)

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all bonus clean fclean re 

