{-
1.
a) 
ghci> 2 + 15
17
foi realizada a soma de "2" mais "15".

b)
ghci> 49 * 100
4900
foi realizada a multiplicação de 49 por 100.

c)
ghci> 1892 - 1472
420
foi realizada a subtração de 1892 por 1472.

d)
ghci> 5 / 2
2.5
foi feita a divisão de 5 por 2.

e)
ghci> (50 * 100) - 4999
1
aqui foi feita de forma desnecessaria o uso de parenteses pois a multiplicao ja possui precedencia.

f)
ghci> 50 * 100 - 4999
1
sem os parenteses

g)
ghci> 50 * (100 - 4999)
-244950
agora com o correto uso dos parentes dando a precedencia a subtracao.

h)
ghci> -1 + 5
4
uma soma.

i)
ghci> (-1) + 5
4
outra soma.
-}

--2

--3
dobro :: Int -> Int
dobro numero = numero * 2

--4
quadrado :: Int -> Int
quadrado numero = dobro(dobro numero)

--5
soma2_x_y :: Int -> Int -> Int
soma2_x_y x y = x + y

--6
soma4 :: Int -> Int -> Int -> Int -> Int
soma4 x y z w = soma2_x_y x y + soma2_x_y z w

--7
misterio :: Int -> Int -> Int -> Int -> Int
misterio x y z w = soma2_x_y(soma2_x_y x y) (soma2_x_y z w)

-- Na execucao o valor final e o mesmo o que muda e que usamos a propria função soma2 ao inves do operador "+"

--8
hipotenusa :: Float -> Float -> Float
hipotenusa oposto adjacente = sqrt((oposto * oposto) + (adjacente * adjacente))