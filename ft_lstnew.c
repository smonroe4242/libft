/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: smonroe <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/22 01:55:43 by smonroe           #+#    #+#             */
/*   Updated: 2019/04/16 14:49:28 by smonroe          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void const *content, size_t content_size)
{
	t_list *temp;

	if (!(temp = (t_list *)malloc(sizeof(t_list) * 1)))
		return (NULL);
	temp->content = (void *)content;
	temp->content_size = content_size;
	temp->next = 0;
	return (temp);
}
