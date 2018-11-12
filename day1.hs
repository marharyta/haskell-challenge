-- day 1: learning basics of Haskell
-- some quotes from the book:

{- 
Quote 1:
“Now you know how to use Haskell as a calculator. 
A key idea of the Haskell language is that it will always be like a calculator, 
except that it will become really powerful when we calculate not only with numbers, 
but also with other objects like characters, lists, functions, trees and even other programs”
-}

{-
Quote 2:
"Intermediate results can be stored in variables, to which we refer by their name”
-}

r = 5.0
a = pi * r ^ 2

{-
Quote 3:
“Unlike in imperative languages, variables in Haskell do not vary. Once defined, their value never changes; they are immutable. ”
-}

{-
Quote 4:
“Defining functions in Haskell is simple: It is like defining a variable, except that we take 
note of the function argument that we put on the left hand side.”
-}

area r = pi * r ^ 2
areaRect l w = l*w

heron a b c = sqrt ( s*(s-a)*(s-b)*(s-c) )
    where
    s = ( a+b+c ) / 2

{-
Note 1:
Haskell is space sensitive. Meaning that if we put an extra space around any part we are not supposed to,
it will break
“Note that both the where and the local definitions are indented by 4 spaces,”
-}

areaTriangleTrig  a b c = c * height / 2
    where
    cosa   = (b^2 + c^2 - a^2) / (2*b*c)
    sina   = sqrt (1 - cosa^2)
    height = b*sina


{-
Quote 5:
“ It turns out that == is just a function, which takes two arguments, 
namely the left side and the right side of the equality test. 
The only special thing about it is the syntax: Haskell allows two-argument functions 
with names composed only of non-alphanumeric characters to be used as infix operators, 
that is, placed between their arguments. “The only caveat is that if you wish to use such a function 
in the "standard" way (writing the function name before the arguments, as a prefix operator) 
the function name must be enclosed in parentheses. So the following expressions are completely 
equivalent:
“the same considerations apply to the other relational operators we mentioned (<, >, <=, >=) and to the arithmetical operators (+, *, etc.) – all of them are just functions. ”

Note: 2

4 + 9 == 13
is the same as
(==) (4 + 9) 13

-}

-- 4 == 4

-- same as

-- (==) 4 4

-- “(&&) performs the and operation.”

-- (3 < 8) && (False == False)

--(||) performs the or operation

--(2 + 2 == 5) || (2 > 0)
-- (||) (18 == 17) (9 >= 11)

-- “not performs the negation of a boolean value; that is, it converts True to False and vice-versa”

-- “not (5 * 2 == 10)”

-- “not equal to operator”

{-
Guards:

abs x
    | x < 0     = 0 - x
    | otherwise = x

numOfSolutions a b c
    | disc > 0  = 2
    | disc == 0 = 1
    | otherwise = 0
        where
        disc = b^2 - 4*a*c

-}
