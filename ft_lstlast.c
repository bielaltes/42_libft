/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstlast.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/26 20:19:16 by baltes-g          #+#    #+#             */
/*   Updated: 2022/09/26 20:36:43 by baltes-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list *ft_lstlast(t_list *lst)
{
	t_list	*ptr;
	t_list	*ant;

	if (!lst)
		return (NULL);

	ptr = lst->next;
	while (ptr != NULL)
		ant = ptr;
		ptr = ptr->next;
	return (ant);
}
