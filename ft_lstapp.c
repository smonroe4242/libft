/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstapp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: smonroe <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/16 14:53:41 by smonroe           #+#    #+#             */
/*   Updated: 2019/04/16 14:54:52 by smonroe          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_lstapp(t_list **alst, t_list *new)
{
	t_list *tmp;

	if (!*alst)
	{
		*alst = new;
		return ;
	}
	tmp = *alst;
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = new;
}
