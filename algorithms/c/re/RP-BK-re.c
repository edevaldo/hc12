
/*
 *  From: A Regular Expression Matcher, Code by Rob Pike, Exegesis by Brian Kernighan
 *  https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html
*/
#include <stdio.h>

int matchhere(char *regexp, char *text);
int matchstar(int c, char *regexp, char *text);

/* match: search for regexp anywhere in text */
int match(char *regexp, char *text)
{
    if (regexp[0] == '^')
        return matchhere(regexp+1, text);
    do {    /* must look even if string is empty */
        if (matchhere(regexp, text))
            return 1;
    } while (*text++ != '\0');
    return 0;
}

/* matchhere: search for regexp at beginning of text */
int matchhere(char *regexp, char *text)
{
    if (regexp[0] == '\0')
        return 1;
    if (regexp[1] == '*')
        return matchstar(regexp[0], regexp+2, text);
    if (regexp[0] == '$' && regexp[1] == '\0')
        return *text == '\0';
    if (*text!='\0' && (regexp[0]=='.' || regexp[0]==*text))
        return matchhere(regexp+1, text+1);
    return 0;
}

/* matchstar: search for c*regexp at beginning of text */
int matchstar_nongreddy(int c, char *regexp, char *text)
{
    do {    /* a * matches zero or more instances */
        if (matchhere(regexp, text))
            return 1;
    } while (*text != '\0' && (*text++ == c || c == '.'));
    return 0;
}

/* matchstar: leftmost longest search for c*regexp */
int matchstar(int c, char *regexp, char *text)
{
	char *t;

	for (t = text; *t != '\0' && (*t == c || c == '.'); t++)
		;
	do {	/* * matches zero or more */
		if (matchhere(regexp, t))
			return 1;
	} while (t-- > text);
	return 0;
}

int main( int argc, char** argv)
{
    int result;

    result = match( "aa.*a", "baaaaaaaaa");
    printf( "%d\n", result);
    return 0;
}

/*
    Todo:
    - Add a parameter to return the point in the string that the pattern matched.
    - Return the count of matched characters:
        - 0 -> no match
        - <0 error condition
    - Add more functionality
 */