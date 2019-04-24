/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: smonroe <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/28 09:51:24 by smonroe           #+#    #+#             */
/*   Updated: 2019/04/23 20:34:49 by smonroe          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		get_next_line(const int fd, char **line)
{
	static char	*s[FDS];
	char		pipe[BUFF_SIZE + 1];
	char		*place;
	int			x;

	if (fd < 0 || fd >= FDS || !line || (!((!s[fd]) ? (s[fd] = ft_strnew(0))
		: (s[fd]))) || ((x = read(fd, pipe, 0)) == -1))
		return (-1);
	while (!ft_strchr(s[fd], '\n') && (x = read(fd, pipe, BUFF_SIZE)) > 0)
	{
		pipe[x] = '\0';
		s[fd] = ft_strjoinfr(s[fd], pipe);
	}
	if (*s[fd])
	{
		if (!(place = ft_strchr(s[fd], '\n')))
			place = NULL;
		else if (!(*place = '\0'))
			place = ft_strdup(place + 1);
		(*line = ft_strdup(s[fd])) ? (ft_strdel(&s[fd])) : 1;
		s[fd] = place;
		return (1);
	}
	free(s[fd]);
	return (x);
}
