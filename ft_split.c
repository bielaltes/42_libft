#include "libft.h"

static int	count_words(char const *s, char c)
{
	int sum;
	int in_word;

	i = 0;
	in_word = 0;
	while (*s != '\0')
	{
		if (*s != c && in_word == 0)
		{
			++sum;
			in_word = 1;
		}
		else if (*s == c)
			in_word = 0;
		s++;
	}
	return (sum);
}

static char	*word_len(char const  *s, char c, int i)
{
	int	len;

	len = 0;
	while (s[i] != c && s[i] != '\0')
	{
		len++;
		i++;
	}
	return (len);
}


char **ft_split(char const *s, char c)
{
	int	i;
	int	j;
	char	**new;

	new = malloc(sizeof(char *) * (count_words(s, c) + 1));
	if (!new)
		return (NULL);
	i = 0;
	j = 0;
	while (j < count_words(s, c))
	{
		while (s[i] == c)
			i++;
		new[j] = ft_substr(s, i, word_len(s, c, i))));
		if (!new[j])
			return (NULL);
		i += word_len(s, c, i);
		++j;
	}
	new[j] = '\0';
	return (new);

}
