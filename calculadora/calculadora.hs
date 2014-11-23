{-|
	Calculadora com dois números utilizando case, usei float nos números porquê divisão não queria aceitar números inteiros acredito que por na maioria
	das vezes os números dão algum número quebrado (ex: 13.5) o compilador não aceitou dividir inteiros, pesquisarei o porquê disso e postarei caso haja
	solução
-}

main =
    do putStrLn "Calculadora haskell"
       putStrLn ""
       putStrLn "Escolha uma operação:"

       putStrLn "[1. Soma | 2. Subtrai | 3. Multiplica | 4. Divide]"
       operacao <- getLine

       case operacao of
       	 -- Soma
         "1" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) + (read segundo :: Float))

         -- Subtrai
         "2" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) - (read segundo :: Float))

         -- Multiplica
         "3" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) * (read segundo :: Float))

         -- Divide
         "4" -> do
         		   putStrLn "Digite o primeiro número: "
       			   primeiro <- getLine

       			   putStrLn "Digite o segundo número: "
       			   segundo <- getLine

       			   putStrLn "Resultado: "
         		   print((read primeiro :: Float) / (read segundo :: Float))

         -- Erro
         _   -> putStrLn "Operação inválida"	