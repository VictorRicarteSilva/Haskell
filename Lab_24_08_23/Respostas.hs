--01
ls1 :: [Int]
ls1 = [3,1,4,1,5]
ls2 :: [Int]
ls2 = [1,6,1,8,0]

--a)
{-
ghci> ls1 > (tail ls2)
False
-}

--b)
{-
ghci> (tail ls1) ++ ls2
[1,4,1,5,1,6,1,8,0]
-}

--c)
{-
ghci> head (tail(tail ls1))
4
-}

--d)
{-
ghci> fst(head ls1, tail ls2)
3
-}

--e)
{-
ghci> 3 ++ ls1

<interactive>:6:1: error:
    * No instance for (Num [Int]) arising from the literal `3'
    * In the first argument of `(++)', namely `3'
      In the expression: 3 ++ ls1
      In an equation for `it': it = 3 ++ ls1
-}

--f)
{-
ghci> snd(head ls1, tail ls2)
[6,1,8,0]
-}

--g)
{-
ghci> "1,2,3" ++ ls1

<interactive>:8:12: error:
    * Couldn't match type `Int' with `Char'
      Expected: [Char]
        Actual: [Int]
    * In the second argument of `(++)', namely `ls1'
      In the expression: "1,2,3" ++ ls1
      In an equation for `it': it = "1,2,3" ++ ls1
-}

--h)
{-
ghci> (head(tail ls2, tail ls1))

<interactive>:9:6: error:
    * Couldn't match expected type: [a]
                  with actual type: ([Int], [Int])
    * In the first argument of `head', namely `(tail ls2, tail ls1)'
      In the expression: head (tail ls2, tail ls1)
      In an equation for `it': it = (head (tail ls2, tail ls1))
    * Relevant bindings include it :: a (bound at <interactive>:9:1)
-}

--i)
{-
ghci> head ls1 ++ ls1

<interactive>:10:6: error:
    * Couldn't match type `Int' with `[Int]'
      Expected: [[Int]]
        Actual: [Int]
    * In the first argument of `head', namely `ls1'
      In the first argument of `(++)', namely `head ls1'
      In the expression: head ls1 ++ ls1
-}

--j)
{-
ghci> ls2 ++ [1..7]
[1,6,1,8,0,1,2,3,4,5,6,7]
-}

--k)
{-
ghci> [9] ++ ls1 ++ ls2
[9,3,1,4,1,5,1,6,1,8,0]
-}

--02
terceiro :: [Int] -> Int
terceiro lista = head(tail(tail lista))

--03
ultimo :: [Int] -> Int
ultimo lista = head (reverse lista)