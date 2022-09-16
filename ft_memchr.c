/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/16 15:42:26 by baltes-g          #+#    #+#             */
/*   Updated: 2022/09/16 15:45:25 by baltes-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*memchr(const void *s, int c, size_t n)
{
	size_t	x;

	x = 0;
	while (x < n)
	{
		if ((int)*s == c)
			return ((char *)s);
		++s;
		++x;
	}
	return (NULL);
}
