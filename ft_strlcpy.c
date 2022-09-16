# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlcpy                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/15 18:25:17 by baltes-g          #+#    #+#              #
/*   Updated: 2022/09/15 18:42:13 by baltes-g         ###   ########.fr       */
#                                                                              #
# **************************************************************************** #

#include "libft.h"

size_t	ft_strlcpy(char *restrict dst, const char *restrict src, size_t size)
{
	size_t	i;
	size_t	sum;

	i = 0;
	sum = 0;
	while (src[sum] != '\0')
	{
		++sum;
	}
	if (size < 1)
	{
		return (sum);
	}
	while (src[i] != '\0' && i < (size - 1))
	{
		dest[i] = src[i];
		++i;
	}
	dest[i] = '\0';
	return (sum);
}
