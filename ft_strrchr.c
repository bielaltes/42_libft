/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/16 15:22:27 by baltes-g          #+#    #+#             */
/*   Updated: 2022/09/16 15:39:47 by baltes-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char	*last;
	
	last = NULL;
	while (*s != '\0')
	{
		if ((int)*s == c)
			last = (char *)s;
		++s;
	}
	if (c == '\0')
		return ((char *)s);
	return (last);
}
