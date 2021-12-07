# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jeonghak <rlawjdgks318@naver.com>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/19 13:14:32 by jeonghak          #+#    #+#              #
#    Updated: 2021/11/25 10:34:59 by jeonghak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ifdef BONUS
	OBJ_ALL = ${OBJS} ${OBJS_B}
else
	OBJ_ALL = ${OBJS}
endif

NAME = libft.a

CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = ./srcs/
SRCS = ${addprefix ${SRC_DIR}, ${SRC}}
SRC = ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c

SRCS_B = ${addprefix ${SRC_DIR}, ${SRC_B}}
SRC_B = ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c

OBJ_DIR = ./objs/
OBJS = ${addprefix ${OBJ_DIR}, ${OBJ}}
OBJS_B = ${addprefix ${OBJ_DIR}, ${OBJ_B}}
OBJ = ${SRC:.c=.o}
OBJ_B = ${SRC_B:.c=.o}

INC_DIR = ./srcs/
INCS = ${addprefix ${INC_DIR}, ${INC}}
INC = libft.h

all: ${NAME}

${NAME}: ${OBJ_DIR} ${OBJ_ALL}
	ar rcs ${NAME} ${OBJ_ALL}

${OBJ_DIR}%.o: ${SRC_DIR}%.c ${INCS}
	${CC} ${CFLAGS} -c $< -o $@

${OBJ_DIR}:
	mkdir -p ${OBJ_DIR}

bonus:
	make BONUS=1 all

clean:
	${RM} ${OBJ_ALL}
	${RM} -r ${OBJ_DIR}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: bonus fclean clean re all
