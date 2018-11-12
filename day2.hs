-- hello

{-
“Literal character values, then, have type Char (short for "character"). 
Single quotation marks, however, only work for individual characters. 
If we need to enter actual text – that is, a string of characters – we use double quotation marks instead:”

:type 'H'
'H' :: Char
:t "Hello"
"Hello" :: [Char]
“[Char] means a number of characters chained together, forming a list. 
That is what text strings are in Haskell – lists of characters.”

-}
