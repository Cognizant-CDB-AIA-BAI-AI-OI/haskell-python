module Main where

import Text.Printf

facAux 0 r = r
facAux n r = facAux (n − 1) ( r ∗ n)
facTail n = facAux n 1

line x = printf "%d! = %d\n" x $ factTail x

main = mapM_ line [0..9]
