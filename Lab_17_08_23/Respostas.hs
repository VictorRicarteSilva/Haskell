{-
1.
    a)
    ghci> 7 `div` 2
    3

    b)
    ghci> 7 `div` 2 == div 7 2
    True

    c)
    ghci> 3 > 5
    False

    d)
    ghci> False == False
    True

    e)
    ghci> 'a' > 'b'
    False

    f)
    ghci> (*) ((+) 7 2) 7
    63

    g)
    ghci> (False && not True) || (5 > 2)
    True

    h)
    ghci> (5 > 1) && (5 > 10)
    False

    i)
    ghci> (5 > 1) || (5 > 10)
    True
-}

{-
2.
    a) (2 ^ 3) * 4
    b) (2 * 3) + (4 * 5)
    c) 2 + 4 * (4 ^ 5)
    d) (not True) || False
    e) (not False) || True
    g) False || (False && True)
-}

--3
inc :: Int -> Int
inc x = x + 1

quadrado :: Int -> Int
quadrado x = x * x

media :: Float -> Float -> Float
media a b = (a + b) / 2.0

{-
a)
ghci> inc (quadrado 5)
26
Aqui fazemos o quadrado de 5 e o incrementamos + 1.

b)
ghci> quadrado (inc 5)
36
Aqui incrementamos 5 e fazemos o quadrado do resultado.

c)
<interactive>:3:8: error:
    * Couldn't match expected type `Float' with actual type `Int'
    * In the first argument of `media', namely `(inc 3)'
      In the expression: media (inc 3) (inc 5)
      In an equation for `it': it = media (inc 3) (inc 5)

Aqui temos o tipo erro de tipos incompativeis, a funcao media espera dois valores Float, mas recebeu dois valores Int.
-}