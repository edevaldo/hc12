
/*
 *  From: A Regular Expression Matcher, Code by Rob Pike, Exegesis by Brian Kernighan
 *  https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html
*/
#include <stdio.h>
#include <stddef.h>

int RE_DEBUG = 0;

int matchhere(char *regexp, char *text, int lvl);
int matchstar(int c, char *regexp, char *text, int lvl);

/* match: search for regexp anywhere in text */
int match(char *regexp, char *text, char** loc)
{
    int result;

    if( RE_DEBUG) printf( "match( %s, %s)\n", regexp, text);

    *loc = NULL;
    if (regexp[0] == '^')
    {
        *loc = text;
        return matchhere( regexp+1, text, 1);
    }
    do {    /* must look even if string is empty */
        result = matchhere(regexp, text, 1);
        if ( result > 0)
        {
            *loc = text;
            return result;
        }
    } while ( *text++ != '\0');
    return 0;
}

/* matchhere: search for regexp at beginning of text */
int matchhere(char *regexp, char *text, int lvl)
{
    int result;

    if( RE_DEBUG)
    {
        for( int i = 0; i < lvl; i++) printf( "  ");
        printf( "matchhere( %s, %s, %d)\n", regexp, text, lvl);
    }
    
    if (regexp[0] == '\0')
        return 1;
    if (regexp[1] == '*')
        return matchstar(regexp[0], regexp+2, text, lvl+1);
    if (regexp[1] == '+' && (*text!='\0' && (regexp[0]=='.' || regexp[0]==*text)))
    {
        result = matchstar( regexp[0], regexp+2, text, lvl+1);
        return result > 0 ? result + 1 : result;
    }
    if (regexp[1] == '?' && (*text!='\0' && (regexp[0]=='.' || regexp[0]==*text)))
    {
        result = matchhere( regexp+2, text+1, lvl+1);
        if( result < 1)
            result = matchhere( regexp+2, text, lvl+1);
        return result > 0 ? result + 1 : result;
    }
    if (regexp[0] == '$' && regexp[1] == '\0')
        return *text == '\0';
    if (*text!='\0' && (regexp[0]=='.' || regexp[0]==*text))
    {
        result = matchhere(regexp+1, text+1, lvl+1);
        return result > 0 ? result + 1 : result;
    }
    
    if( RE_DEBUG)
    {
        for( int i = 0; i < lvl; i++) printf( "  ");
        printf( "No match found.\n");
    }
    return 0;
}

/* matchstar: search for c*regexp at beginning of text */
int matchstar_nongreddy(int c, char *regexp, char *text, int lvl)
{
    if( RE_DEBUG)
    {
        for( int i = 0; i < lvl; i++) printf( "  ");
        printf( "matchstar_( %s, %s, %d)\n", regexp, text, lvl);
    }

    do {    /* a * matches zero or more instances */
        if (matchhere(regexp, text, lvl+1))
            return 1;
    } while (*text != '\0' && (*text++ == c || c == '.'));
    for( int i = 0; i < lvl; i++) printf( "  ");
    
    if( RE_DEBUG)
        printf( "No match found.\n");

    return 0;
}

/* matchstar: leftmost longest search for c*regexp */
int matchstar(int c, char *regexp, char *text, int lvl)
{
	char *t;
    int match=0, result;

    if( RE_DEBUG)
    {
        for( int i = 0; i < lvl; i++) printf( "  ");
        printf( "matchstar( %s, %s, %d)\n", regexp, text, lvl);
    }
	for (t = text; *t != '\0' && (*t == c || c == '.'); t++)
        match++;
	do {	/* * matches zero or more */
		if ( (result = matchhere(regexp, t, lvl+1)))
			return result+match;
        match--;
	} while (t-- > text);

    if( RE_DEBUG)
    {
        for( int i = 0; i < lvl; i++) printf( "  ");
        printf( "No match found.\n");
    }

    return 0;
}

void print_match_result( char* pattern, char *text, char* loc, int len)
{
    printf("%s\tPattern:%s\tStart:%ld\tLength:%d \n", text, pattern, loc-text, len);
    for( int i=0; i < loc-text; i++) putchar(' ');
    putchar( '^');
    if( len > 1)
    {
        for( int i=2; i < len; i++) putchar('.');
        putchar( '^');
    }
    putchar( '\n');
}

int main( int argc, char** argv)
{
    int result;
    char* loc;
    // char* text = "bcaaaaaaaad";
    char* text = "bcaasssssada";
    // char* pattern = "aa.*a";
    // char* pattern = "a";
    //char* pattern = "a$";
    char* pattern = "as+a";

    result = match( pattern, text, &loc);
    printf( "%d, text=%p, loc=%p, loc-text=%ld\n", result, (void*)text, (void*)loc, loc-text);

    result = match( "ass*a", text, &loc);
    printf( "%d, text=%p, loc=%p, loc-text=%ld\n", result, (void*)text, (void*)loc, loc-text);

    print_match_result( "ass*a", text, loc, result);

    result = match( "aa?s*a", text, &loc);
    print_match_result( "aa?s*a", text, loc, result);
    return 0;
}

/*
    Todo:
    - Return the count of matched characters:
        - 0 -> no match
        - <0 error condition
    - Supported Regep Features:
        ^  Matches the start position of the string.
        $  Matches the last position of the string.
        *  Zero or more occurences of the previous character (expression when '(' ')' are supported).
        +  One or more occurences of the previous character (expression when '(' ')' are supported).
        ?  Zero or one occurence of the previous character (expression when '(' ')' are supported).
        .  Matches any character.
        {m}   m occurences  of the previous character (expression when '()[]' are supported).
        {m,}  m or more occurences of the previous character (expression when '(' ')' are supported).
        {m,n} Between m and n occurences of the previous character (expression when '(' ')' are supported).
        *? +? ?? {m}? {m,}? {m,n}? Non greedy versions.
        (re)    Grouping and capturing.
        (?:re)  Non capturing
        [chars]  Bracketed expression. Maches any of chars in expression. Including ranges '-'.
        [^chars] Bracketed expression. Matches any char not in expression. Including ranges '-'.
        \char    Interpret special char as a regular character.
        \n       back reference
        {        When not followed by a digit matches the '{'character.
        char    Matches character.
        Case insensitive matching.
        (?=re)  Positive lookahead.
        (?!re)  Negative lookahead.

        Control characters:
        \a   Bell
        \b   backspace
        \B   \ equivalent to \\
        \e   ESC
        \f   Form Feed
        \n   CR
        \t   tab
        \v   vertical tabl
        \xhh character whose value is 0xhh
        \0   Should we do this? Matches 0x00 character.

        \d  Matches a digit.
        \s  Maches space.
        \w  Matches a word character. [_0-9a-zA-Z]

        \D Marches a non-digit character.
        \S Match a non-space character.
        \W [^_0-9a-zA-Z]

        \mnn A back reference.

        [:alpha:] [:upper:] [:lower:] [:digit:] [:xdigit:] [:alnum:]
        [:print:] [:blank:] [:space:] [:punct:] [:graph:] [:cntrl:]
        [[:<:]] Matches the begining of a word.
        [[:>:]] Matches the end of a word.

 */


 /********
 * lldb commands:
 *   > target create enigma
 *   > target list
 *   > target delete 0
 * 
 *   > b main                               Set breakpoint at function
 *   > b 178                                Set breakpoint at line
 *   > br list
 *   > run                                  Run
 *   > c                                    Continue
 *   > s                                    Step into
 *   > n                                    Step over
 *   > f                                    Step out
 *   > si/ni                                Assembly level step
 *   > p enigma->rotor_idx[0]               Print
 *   > breakpoint list
 *   > breakpoint delete 1
 *   > help                                 Get help
 *   > vo                                   Show variables at current stack frame, also var, v
 *   > re read                              Show registers
 *   > bt                                   Backtrace
 *   > gui                                  Launches gui
 * 
 *   > breakpoint command add
 *   > break modify <breakpoint ID> -condition "video.length > 60"
 *   > break modify <breakpoint ID> --ignore-count 10
 *   > tbreak
 * 
 *   > break set -f <file> -l <line #>      Set breakpoint to a specific line of a file
 *   > br s -f enigma.c -l 103              More compact example
 *   > br mod -c "x < 0" 1                  Modify breakpoint 1 to only stop if x < 0
 *   > br mod -c "" 1                       Remove condition
 *   > b enigma.c : 103                     Even more so
 *   > b square(int)                        Breakpoint on a function (C++ with plymorfism in this case)
 *   > b Demo::demo()                       Class method
 *   > b LLDBDemo::add(int, int)            Namespace
 * 
 *   > bt                                   backtrace - print stack frames
 *   > bt all
 *   > frame variable                       Frame variables or
 *   > fr v
 *   > frame select                         Show curent frame (like what is printed after step)
 *   > fr s                                 Go to current frame of execution
 *   > frame select 0                       Enter frame context
 * 
 *   Global Variables:
 *   > watchpoint set variable globalVariable
 *   > watchpoint set variable -W read | write | read_write globalVariable
 *   > wa l                                 List watchpoints
 *   Member Variable:
 *   > b main
 *   > w s v d.memberVar
 *   > watchpoint modify -c '(globalVar == 75)'             Set a condition for watchpoint
 *   > w del 7                              Delete watchpoint
 * 
 *   Core dump:
 *   > target create "test/RunUnitTests" --core "/cores/core.21707"
 * 
 *   > attach -p xxxx                       attach to a process. Could use --pid
 *   > attach --name hello                  attach to a named process.
 *                                          can use --waitfor
 *   > kill
 *   > quit
********/