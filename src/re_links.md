
# Links to Sites to Read:

[Regular Expression Matching Can Be Simple And Fast
(but is slow in Java, Perl, PHP, Python, Ruby, ...)](https://swtch.com/~rsc/regexp/regexp1.html)  
[Beautiful Code](https://www.oreilly.com/library/view/beautiful-code/9780596510046/ch01.html)  
[tiny-regex-c](https://github.com/kokke/tiny-regex-c)  
[Gnu Libc - Infinity and NaN](https://www.gnu.org/s/libc/manual/html_node/Infinity-and-NaN.html)  
[Build a Regex Engine in Less than 40 Lines of Code](https://nickdrane.com/build-your-own-regex/)  
[cl-ppcre](https://github.com/edicl/cl-ppcre)  
[Lexical Scanning in Go - Rob Pike](https://www.youtube.com/watch?v=HxaD_trXwRE)  
[ridiculousfish blog](https://web.archive.org/web/20090630011726/https://ridiculousfish.com/blog/archives/2006/05/30/old-age-and-treachery/)  
[A Play on Regular Expressions](https://sebfisch.github.io/haskell-regexp/regexp-play.pdf)  
[regexp.old](https://github.com/garyhouston/regexp.old)  
[How to build a regex engine from scratch](https://medium.com/@rhaeguard/how-to-build-a-regex-engine-from-scratch-743ea6e16909)  
[Building a regex engine](https://sh4dy.com/2025/05/01/regex_engine/)  
[First Look at How a Regex Engine Works Internally](https://www.regular-expressions.info/engine.html)  
[How to build a regex engine from scratch](https://rhaeguard.github.io/posts/regex/)  
[report?](https://home.uncg.edu/cmp/faculty/srtate/495.s15/clang/clamav/report-1af8e2.html)  
[Let's Build a Regex Engine](https://kean.blog/post/lets-build-regex)  
[Building a Regex Engine Part 1 - Introduction](https://www.abstractsyntaxseed.com/blog/regex-engine/introduction)  
[Regexer](https://regexr.com/)  
[REGEX ENGINES Simplified - How Regular Expressions work | Part 3](https://www.youtube.com/watch?v=w-3uicbGwpA)  
[How Do Regular Expressions Really Work?](https://www.youtube.com/watch?v=u01jb8YN2Lw)  
[6502.org code examples](http://6502.org/source/)



# Expressoes Uteis / __Examples__:

## Numero em ponto flutuante:
```
    .3
    1.
    -.3
    +3.0
    000.0000004
    1e-5
    1e6
    1e+5
    Inf
    +Inf
    Infinity
    -Inf
    NaN
```

### RE completa pra numeros em ponto flutuante:
```
([-+]?)
(?:
    (\d*\.\d+   |    \d+\.|    \d+(?=[eE]([-+]?\d+)))
    (?:[eE]([-+]?\d+))?
    |  [sSqQ]?(?: NaN | nan | NAN)
    | (?: Inf | inf | infinite | Infinite | INIFINITE | INF)
)
```

### Exemplos em Tcl
```
regexp {([-+]?)(?:(\d*\.\d+|\d+\.|\d+(?=[eE]([-+]?\d+)))(?:[eE]([-+]?\d+))?)} +1.35e-39 match sign mant exp
regexp {([-+]?)(?:(\d*\.\d+|\d+\.|\d+(?=[eE]([-+]?\d+)))(?:[eE]([-+]?\d+))?)} 1e-100 match sign mant exp
```

## Hexadecimal:
```
    0[xX]\d+
```

## Decimal:
```
    [-+]?\d+
```

---

# Markdown Cheatsheet:
Real time rendering on VSCode:  
`<ctrl>-<shift>-P` -> `Markdown: Open Preview to the Side`

## Formating:
_Italic_  
__Bold__  
___Italic Bold___  

This is a ^superscript^  
This is a ~subscript~  
This is a <sup>superscript</sup>  
This is a <sub>subscript</sub>

## Lists:
1. Item 1
2. Item 2
3. Item 3

* Unordered List Item
    * Unordered Sub Item
* Unordered List Item
* Unordered List Item
    1. Ordered Sub Item 1
    2. Ordered Sub Item 2
* Another Item

+ Another List - Unordered Item 1
+ Another List - Unordered Item 2

- Another List - Unordered Item 1
- Another List - Unordered Item 2

## Horizontal Ruler

---

## Blocks of Code:
```c
    for( int i=0; i<10; i++>)
    {
        j = i * 4;
    }
```

```Tcl
    for {set i 0} {$i < 10} {incr i} {
        set j [expr { i * 4}]
    }
```

## Links:
[Text for the link:](/Decimal:)

## Images:
![Google Logo]()

## Blockquotes:
> Kind of a quote...
>> Quoting something else.

## Tables:
| Col 1 | Col 2 |
| ----- | ----- |
| This | is |
| an | exaple |
| table | with |
| two | columns |

Justify first col in the center and second column to the right.
| Col 1 | Col 2 |
| :---: | ----: |
| This | is |
| an | exaple |
| table | with |
| two | columns |

## Checklist:
```
    Code box...
- [ ] Unchecked
- [x] Checked
```
