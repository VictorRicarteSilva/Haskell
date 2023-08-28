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

--4
{-
a) Esta correto, pois esta dentro da regras de sintaxe do Haskell, no que diz respeito a nomeclatura de funcoes.

b) Esta incorreto, no Haskell funcoes e variaveis nao devem conter numeros como seu primeiro caracter.

c) Esta incorreto, no Haskell somento tipos e variaveis podem ter seu primeiro caracter em caps lock.

d) Esta incorreto, Haskell nao tolera caracteres especiais na hora de declarar funcoes e variaveis

e) Mesmo erro da questao anterior, porem salvo a parte de que somente variaveis e tipos podem ter o primeiro caracter em caps lock.
-}

--5
areaRetangulo :: Int -> Int -> Int
areaRetangulo base altura = base * altura

--6
areaQuadrado :: Float -> Float
areaQuadrado lado = lado * lado

--7
areaTriangulo :: Float -> Float -> Float
areaTriangulo base altura = (base * altura) / 2

--8
areaTrapezio :: Float -> Float -> Float -> Float
areaTrapezio base baseM altura = ((baseM + base) * altura) / 2

--9
areaCirculo :: Float -> Float
areaCirculo raio = (2 * pi) * raio

--10
areaCoroa :: Float -> Float -> Float
areaCoroa area1 area2 = (if area1 > area2 then
                        (pi * (area1 ^ 2)) - (pi * (area2 ^ 2)) else
                        (pi * (area2 ^ 2)) - (pi * (area1 ^ 2)))

--11
volumeCubo :: Float -> Float
volumeCubo aresta = aresta ^ 3

--12
volumeParalelepipedo :: Float -> Float -> Float -> Float
volumeParalelepipedo comprimento largura altura = comprimento * largura * altura

--13
areaPiramideQuadrada :: Float -> Float -> Float -> Float
areaPiramideQuadrada areabase base altura = areaQuadrado areabase + areaTriangulo base altura

--14
volumeEsfera :: Float -> Float
volumeEsfera raio = (4.0 * pi * raio ^ 3) / 3.0

--15
hipotenusa :: Float -> Float -> Float
hipotenusa oposto adjacente = sqrt((oposto ^ 2) + (adjacente ^ 2))

--16
distancia0 :: Float -> Float -> Float
distancia0 x y = sqrt((x ^ 2) + (y ^ 2))

--17
delta :: Float -> Float -> Float
delta maior menor = if maior > menor then
                    maior - menor else
                    menor - maior
quadradoF :: Float -> Float
quadradoF numero = numero * numero

distancia :: Float -> Float -> Float -> Float -> Float
distancia x1 y1 x2 y2 = sqrt (quadradoF (delta x1 x2) + quadradoF (delta y1 y2))

--18
cubo :: Int -> Int
cubo numero = numero ^ 3

--19
quartaPotencia :: Int -> Int
quartaPotencia numero = cubo numero * numero

--20
segundosParaHora :: Int -> Int
segundosParaHora segundos = div segundos 3600

--21
segundosParaMinuto :: Int -> Int
segundosParaMinuto segundos = div segundos 60

--22
fahrenheitParaCelsius :: Float -> Float
fahrenheitParaCelsius fahrenheit = (fahrenheit - 32) / 1.8

--23
kelvinParaCelsius :: Float -> Float
kelvinParaCelsius tempKelvin = tempKelvin - 273.15

--24
fahrenheitParaKelvin :: Float -> Float
fahrenheitParaKelvin fahrenheit = fahrenheitParaCelsius fahrenheit + 272.15

--25
