data Meses = Jan|Fev|Mar|Abr| Mai|Jun|Jul|Ago|Set|Out|Nov|Dez

type Nome = String
type Cod = [Int]
type Preco = Float

data Produto =  Produto Nome Cod Preco

baseProdutos :: [Produto]
baseProdutos = [Produto "Arroz" [1101] 21.0, Produto "Feijão" [1110] 15.5]

mostraPreco :: Cod -> Produto
mostraPreco cod = Produto _ cod preco