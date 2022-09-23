/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: baltes-g <baltes-g@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/22 19:50:23 by baltes-g          #+#    #+#             */
/*   Updated: 2022/09/23 16:07:32 by baltes-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	numcharinstr(const char *s1, char c)
{
	int	sum;
	int	trobat;

	trobat = 0;
	sum = 0;
	while (!trobat && *s1 != '\0')
	{
		if (*s1 == c)
			++sum;
		++s1;
	}
	return (sum);
}

int	charinstr(const char *set, char c)
{
	while (*set != '\0')
	{
		if (*set == c)
			return (1);
		++set;
	}
	return (0);
}

int	countin(const char *s1, const char *set)
{
	int	sum;

	sum = 0;
	while (*set != '\0')
	{
		sum += numcharinstr(s1, *set);
		++set;
	}
	return (sum);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	char	*new;
	int		i;
	int		trobat;

	i = 0;
	trobat = 0;
	new = malloc(sizeof(char) * (ft_strlen(s1) - countin(s1, set) + 1));
	if (!new)
		return (NULL);
	while (!trobat && *s1 != '\0')
	{
		if (!charinstr(set, *s1))
		{
			new[i] = *s1;
			++i;
			trobat = 1;
		}
		++s1;
	}
	new[i] = '\0';
	return (new);
}
