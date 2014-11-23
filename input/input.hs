{- |
	Modelo de código com recebimento via input
-}
main = do  
    putStrLn "Olá, qual seu nome?"  
    nome <- getLine  -- Atribuindo o valor do input para a variável nome
    putStrLn ("Olá " ++ nome ++ ", isso é haskell!") -- Exibir variável nome e outra string concatenada.