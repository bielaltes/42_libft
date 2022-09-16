/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/16 15:14:53 by baltes-g          #+#    #+#             */
/*   Updated: 2022/09/16 15:15:25 by baltes-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
                                         
#include "libft.h"

char	*strchr(const char *s, int c)
{
	while (*s != '\0')
	{
		if ((int)*s == c)
			return ((char *)s);
		++s;
	}
	if (c == '\0')
		return ((char *)s);
	return (NULL);
}
