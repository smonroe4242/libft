#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: smonroe <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/16 06:21:48 by smonroe           #+#    #+#              #
#    Updated: 2019/04/23 20:40:09 by smonroe          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRC = ft_bzero.c ft_memset.c ft_memcpy.c ft_memccpy.c\
	ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c\
	ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c\
	ft_strncat.c ft_strlcat.c ft_strchr.c ft_strrchr.c\
	ft_strstr.c	ft_strnstr.c ft_strcmp.c ft_strncmp.c\
	ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c\
	ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c\
	ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c\
	ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c\
	ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c\
	ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c\
	ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c\
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
	ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c\
	ft_lstiter.c ft_lstmap.c ft_isspace.c ft_malloc_2d.c\
	ft_strrev.c ft_isprime.c ft_strjoinfr.c ft_rand.c\
	ft_frand.c get_next_line.c ft_intlen.c ft_itoa_base.c\
	ft_strappfr.c ft_printf.c ft_printf_handle.c ft_print_util.c\
	ft_printf_spare.c ft_strndup.c ft_strmrg.c ft_itoa_base_big.c\
	ft_itoa_base_ubig.c ft_printf_parse.c ft_strsplitwsp.c ft_putwchar.c\
	ft_getopt.c

OBJ = ft_bzero.o ft_memset.o ft_memcpy.o ft_memccpy.o\
	ft_memmove.o ft_memchr.o ft_memcmp.o ft_strlen.o\
	ft_strdup.o ft_strcpy.o ft_strncpy.o ft_strcat.o\
	ft_strncat.o ft_strlcat.o ft_strchr.o ft_strrchr.o\
	ft_strstr.o ft_strnstr.o ft_strcmp.o ft_strncmp.o\
	ft_atoi.o ft_isalpha.o ft_isdigit.o ft_isalnum.o\
	ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o\
	ft_memalloc.o ft_memdel.o ft_strnew.o ft_strdel.o\
	ft_strclr.o ft_striter.o ft_striteri.o ft_strmap.o\
	ft_strmapi.o ft_strequ.o ft_strnequ.o ft_strsub.o\
	ft_strjoin.o ft_strtrim.o ft_strsplit.o ft_itoa.o\
	ft_putchar.o ft_putstr.o ft_putendl.o ft_putnbr.o\
	ft_putchar_fd.o ft_putstr_fd.o ft_putendl_fd.o ft_putnbr_fd.o\
	ft_lstnew.o ft_lstdelone.o ft_lstdel.o ft_lstadd.o\
	ft_lstiter.o ft_lstmap.o ft_isspace.o ft_malloc_2d.o\
	ft_strrev.o ft_isprime.o ft_strjoinfr.o ft_rand.o\
	ft_frand.o get_next_line.o ft_intlen.o ft_itoa_base.o\
	ft_strappfr.o ft_printf.o ft_printf_handle.o ft_print_util.o\
	ft_printf_spare.o ft_strndup.o ft_strmrg.o ft_itoa_base_big.o\
	ft_itoa_base_ubig.o ft_printf_parse.o ft_strsplitwsp.o ft_putwchar.o\
	ft_getopt.o

all: $(NAME)

$(NAME):
	@gcc -c -Wall -Werror -Wextra $(SRC)
	@ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	@rm -rf *~ \#*\# $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean $(NAME) clean

debug: fclean
	@gcc -c -Wall -Werror -Wextra -g $(SRC)
	@ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

fsan: fclean
	@gcc -c -Wall -Werror -Wextra -g -fsanitize=address $(SRC)
	@ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
