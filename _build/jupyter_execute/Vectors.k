1 4 7 2 3 9 0         / a simple numeric vector

(1 2 3;4 5 6;7 8 9)   / a nested vector - nested elements separated by semi-colon

("Hello world"; `h`e`l`l`o)

`sym

`a`b`c`d

a:1 4 7 2 3 9 0
b:"some text here"

var:23 45 56
var

:var:23 45 56    / dex the assignment for output

5

,5                   / a vector containing the element 5

#3 4 5 1 23 5        / a vector containing 6 elements
#(1 2 3;3 2 1)       / a nested vector containing 2 elements
#,5                  / a vector containing 1 element                 
#5                   / a single scalar

*5             / first element of scalar 5
*1 2 3 4 5     / first element of vector 1 2 3 4 5

scalar:5
vector:1 2 3 4 5
scalar~*scalar
vector~*vector

3 5#3 1 2 4 5 8 6 9 8 4 5 2 3 4     / a 3x5 matrix

3 5#1 2 3           / too few elements; repeat

3 3#1 2 3 4 5 6 7 8 9 10 11 12 / too many, truncate

2 3 5#!30

v:2 5 4 2 6 5 3 7 5 3 7 5
rows:-2!#v                   / -i! is div: integer division
(rows;2)#v

v:2 5 4 2 6 5 3 7 5 3 7 5
0N 2#v

:m:3 5#!15          / an example matrix

m 0 1 0 1           / index by 'raw' vector

m@0 1 0 1           / index @ single argument vector

m[0 1 0 1]          / bracket index

m:3 5#!15
m[2][1]         / first select row 2, then select element 1 from that

m:3 5#!15
m[2;1]          / index at depth

m:3 5#!15
m[2 1]          / function call with the single argument vector 2 1: select row 2 and row 1
m[2;1]          / function call with two arguments, 2 and 1: select element at row 2, col 1

c:2 3 5#!30
c[1;;]                / layer 1, all rows, all columns

c:2 3 5#!30
c[1;1;1]                  / 21

c:2 3 5#!30
c[;;3]

m:3 3#!9
m[(2 2;1 1)]              / note: this is NOT indexing at depth!

v:1 5 3 2 8 7 0
v[4]: -2                  / change element as pos 4 to -2
v

v:1 5 3 2 8 7 0
v[0 6 4]: -2              / change elements as pos 0 6 and 4 to -2
v

m:2 3 5#!30
m[1;1;1]: -2              / change element at layer 1, row 1, col 1 to -2
m

m:2 3 5#!30
m[1][1][1]: -2            / NB: error!

23+76 43 29 87 65 12

:m:(3 1 2;5 4 3;(8 1 2;2 3 4))  / ragged array

m+55                            / add 55 to each atom

26 34 57 98+76 53 48 10

26 34 57 98+76 53 48       / 'length error


