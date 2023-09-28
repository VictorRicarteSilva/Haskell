--01
equalQtd :: (Int, Int, Int) -> Int
equalQtd (n1, n2, n3)  
    | n1 == n2 && n2 == n3 = 3
    | n1 == n2 = 2
    | n2 == n3 = 2
    | otherwise = 0

--02
menorReal :: (Float, Float) -> Float
menorReal (n1, n2)
    | n1 > n2 = n2
    | otherwise = n1

--03
menorDe3 :: (Float, Float, Float) -> Float
menorDe3 (n1, n2, n3)
    | n1 > n2 && n2 >= n3 = n3
    | n1 > n3 && n3 >= n2 = n2
    | otherwise = n1

--04
menorDe3Tuplas :: (Float, Float, Float) -> (Float, Float)
menorDe3Tuplas (n1, n2, n3)
    | n1 > n2 && n2 > n3 = (n1, n3)
    | n1 > n3 && n3 > n2 = (n1, n2)
    | n2 > n1 && n3 > n1 = (n2, n1)
    | n2 > n1 && n1 > n3 = (n2, n3)
    | n3 > n2 && n1 > n2 = (n3, n2)
    | n3 > n2 && n2 > n1 = (n3, n1)

--05
delta :: Float -> Float -> Float -> Float
delta a b c
    | b ^ 2 > (4 * a * c) = 2
    | b ^ 2 == (4 * a * c) = 1
    | otherwise = 0.0

--06
crono :: (Int, Int, Int) -> (Int, Int, Int) -> String
crono (dia,mes,ano) (dia2, mes2, ano2)
    | ano < ano2 = "Primeira data occoreu antes da segunda"
    | ano > ano2 = "Segunda data ocorreu antes da Primeira"
    | mes < mes2 = "Primeira data occoreu antes da segunda"
    | mes < mes2 = "Segunda data ocorreu antes da Primeira"
    | dia < dia2 = "Primeira data occoreu antes da segunda"
    | dia > dia2 = "Segunda data ocorreu antes da Primeira"

--07
ordena2 :: Int -> Int -> (Int, Int)
ordena2 x y
    | x > y = (y, x)
    | otherwise = (x, y)

--08
par :: Int -> Bool
par numero
    | numero `mod` 2 == 0 = True
    | otherwise = False

--09
impar :: Int -> Bool
impar numero
    | par(numero) == True = False
    | otherwise = True