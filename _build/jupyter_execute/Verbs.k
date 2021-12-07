1+5*2-2

1+(5*2)-2

4 3 2 5 6 + 3 2 1 2 1 - 8 7 4 1 2

"hello":"world"

:57

a:1 2 3 4    / assignment
a

:a:(1 2 3 4 5;6 7 8 9 10)   / leading : for display purposes
+a

+(1 2 3 4 5 6;0)     / broadcast atom
+(1 2 3 4 5 6;0 1)   / length error

1 2 3 4 + 7

-1 2 3 4 5 6     / negate only the first element
- 1 2 3 4 5 6    / negate list
1 2 3 -4 5 6     / negative literal
1 2 3 - 4 5 6    / subtraction

*1 2 3
*"hello, world"
*("hello";"world")
*`sym

*`a`b`c!1 2 3

5438.8*75623.9

%2     / √2
10%3   / 10÷3

%(2 7 4 10 9;6 5 9 65 41)

!10

!3 3 3

d:`eric`bob`amy`joan!234 67 52 98
!d

-2!28      / div
2!29       / mod

&0 0 1 1 0 1 0        / where are the 1s?

&0 0 0 0 5 0 0 0 2    / 5 of index 4, 2 of index 8

5&7                   / min 
5&1 2 3 4 5 6 7 8 9

(2>8)&7<10
1 0 1 1 0 1 0 0 1 1&1 1 0 1 1 0 0 0 1 0

|1 2 3 4 5                 / simple list
|(1 2 3;(4 5 6;7 8 9))     / nested list
|`sym                      / atom
|`a`b`c!1 2 3              / dict

5|7                        / max
5|1 2 3 4 5 6 7 8 9

(2>8)|7<10
1 0 1 1 0 1 0 0 1 1|1 1 0 1 1 0 0 0 1 0

v:7 5 10 12 10 3 8 18 4 16 0 5 3 6 15 3 11 16 2 17

<v                / grade up
v[<v]             / select on grade up, a.k.a sort in ascending order

k:`a`b`c`d`e`f`g`h`i`j`k`l`m`n`o`p`q`r`s`t
v:7 5 10 12 10 3 8 18 4 16 0 5 3 6 15 3 11 16 2 17
d:k!v

<d               / grade up
d[<d]            / select on grade up, a.k.a sort in ascending order

="mississippi"

=3
=5

5=9 7 5 2 3 5 6 9 8 5 7    / hands up if you're a 5

~1 0 0 1 1 0 0 0 0 1

~2 0 8 0 0 9 0 8 0 8 6 6 5

(1 0 0 1;0 1 0 1)~(1 0 0 1;0 1 0 1)
(1 0 0 1;(0 1;0 1))~(1 0 0 1;0 1 0 1)

,1
,1 2 3

#1 2 3
#,1 2 3

a:1 2 3 4
b:7 8 9 10

a,b

a:1 2 3 4
b:7 8 9 10

a b            / note: no stranding! this is interpreted as a@b

^0N

^9 8 3 5 0N 54 98 0N 67 53    / where are the nulls?

99^9 8 3 5 0N 54 98 0N 67 53  / replace nulls with 99

"mississippi"^"spm"

#"hello, world"
#`sym
#42
#,33

5#1                        / Reshape the atom 1 to a length 5 vector (lengthening)

3 3#8 3 4 1 2 9 5 7 6      / Reshape the vector 8 3 4... etc into a 3x3 matrix

5#8 3 4 1 2 9 5 7 6 7 4 2  / Reshape the right vector to length 5 (shortening)

-5#8 3 4 1 2 9 5 7 6 7 4 2 / Reshape the right vector to length 5, from the back

5#,1 2 3                   / Take 5 instances of the vector 1 2 3

`bob`eric`sam#`eve`frank`rita`bob`sue`sam!32 34 52 56 83 99

{1 0 0 1 1 0 1 0 1}#"hellobob!"

{5 0 0 0 5 0 5 0 5}#"hellobob!"

_43.76             / floor
_"Hello, World!"   / downcase

3_"hello world!"
-3_"hello world!"

"hello world!"_5   / delete element at position 5

s:"a string with several spaces"
(0,&" "=s)_s

{0=2!x}_!20        / filter out all even numbers

$(12;"ab";`cd;+)  / a vector containing a number, a string, a symbol and a function

15$"baloo"    / pad end of string with spaces to make up the length 15
-15$"baloo"   / pad beginning of string with spaces to make up the length 15

`c$97 98 99   / convert integers to the corresponding ascii-characters
`i$-1.2 2.3   / floats to int
`$"sym"       / string to sym
`I$"-12"      / string to int

?"missisippi"

9 6 3 6 5 3 5?3 6 5     / where can I find 3, 6 and 5 first?

9 6 3 6 5 3 5?3 2 5     / note: no 2 on the left!

3?100                   / roll: 3 random integers less than 100

1?0                     / -inf

-20?100                 / deal: 20 unique random numbers less than 100

" "\"a string with embedded spaces"
"with"\"a string with embedded spaces"

" "/("hello";"world")

24 60 60\10000

24 60 60/2 46 40

units:`legion`cohort`century`contubernia`soldier
bases:10 10 6 10 8
units!bases\16894

12\1 2 3 4 5 12 5 4 3 2 1

*(,12)\1 2 3 4 5 12 5 4 3 2 1   / mod 12

2\54
2/1 1 0 1 1 0

:m:3 3#!9    
m[1]         / pick row 1

m:{x+5}
m[1]

m:{x+5}
m@1

m:3 3#!9
m[1 0 2]   / pick rows 1, 0 and 2
m[1][0]    / pick row 1 - a vector - and from this, pick element 0
m[1;0]     / indexing at depth; can also be used for assignment
m@1 0 2    / equivalent to m[1 0 2]
(m@1)@0    / equivalent to m[1][0]

{x+y}[23;76]  / call a function with two arguments
{x+y}.23 76   / call a function with two arguments, taken as a list

{x+y}.'(23 76;23 65;76 54)


