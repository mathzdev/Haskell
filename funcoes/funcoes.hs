{-|
	Testes básicos com funções simples usando as quatro operações matemáticas, e um teste mais complexo com as 4 operações inclusas
-}

soma :: Int -> Int -> Int
soma x y = x + y

subtrai :: Int -> Int -> Int
subtrai x y = x + y

multiplica :: Int -> Int -> Int
multiplica x y = x * y

dividir :: Float -> Float -> Float
dividir x y = x / y

funcao :: Float -> Float -> Float -> Float -> Float
funcao x p t o = ((x * p) / t) + o

main = do
	putStr "Soma: "
	print (soma 5 13)
	putStrLn ""

	putStr "Subtrai: "
	print (subtrai 9 3)
	putStrLn ""

	putStr "Multiplica: "
	print (multiplica 2 10)
	putStrLn ""

	putStr "Dividir: "
	print (dividir 20 4)
	putStrLn ""

	putStr "Funcão: "
	print (funcao 3 4 2 1)
	putStrLn ""