keys:`bob`adam`sue`rita
vals:23 54 12 82
keys!vals                         / construct a dict

d:keys!vals
!d                                / get keys
.d                                / get values

d[`sue]
d@`rita
d`rita`sue

d[`sue`adam`eric`frank]:1 2 3 4   / mixture of updates and inserts
d

d1:`bob`adam`sue`rita!23 54 12 82
d2:`adam`eric`bob`frank!99 66 44 77
d1,d2

-2#`bob`adam`sue`rita`eric`frank!23 2 1 82 3 4  / take from the end

sales:`Mon`Tue`Wed`Thu`Fri!(1 4 8 9 4 5;3 6;7 0 0 9;2 8 0 9 9 7 6 7;0 6 2)
sales

#'sales                            / apply monadic # to each value, retaining keys

&1 0 0 1 1 0 0 1 0

&`rita`bob`sue`adam`frank!0 0 1 0 1         / get all keys which have a value of 1

(`bob`adam`sue`rita!23 54 12 82)?12         / lookup key by value                                        

&5=`bob`adam`sue`rita!5 1 5 3               / All keys having value 5

|/`rita`bob`sue`adam`frank!12 7 87 32 11    / find the max value in a dict

&2!`a`b`c`d`e`f`g`h!!8                      / keys of odd values

(2!)#`a`b`c`d`e`f`g`h!!8                    / filter values

`b`c#`a`b`c`d`e`f`g`h!!8                    / take the `b and `c pairs

`b`Q`c#`a`b`c`d`e`f`g`h!!8                  / take non-existent key `Q gives a 0N as values are ints

{0 1 1 0 0 0 1 1}#`a`b`c`d`e`f`g`h!!8       / pick pairs by bool map

dict:`a`b`c`d`e`f!8 9 1 2 5 4
<dict                            / grade down
dict[<dict]                      / sort by selecting on the grade

="a cat sat on a mat"

=1 2 1 1 3 8 9 9 9 1 1 8

#'=1 2 1 1 3 8 9 9 9 1 1 8             / lengths of groups

abc:`c$"a"+!26                         / generate lower-case alphabet
0^abc##'="hereisaparagraphoftexts"


