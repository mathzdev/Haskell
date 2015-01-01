{-|
	Método de ordenação quicksort
  http://vilhena.wordpress.com/2010/07/04/quicksort-haskell-vs-c/
-}

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
  let smaller = filter (<x) xs
      bigger  = filter (>= x) xs
  in qsort smaller ++ [x] ++ qsort bigger

main = do y <- readFile "input.txt"
          l <- parseList y
          let s = qsort l
          writeFile "output.txt" (show s)
          print "Numeros ordenados!"
  where
    parseList :: String -> IO [Integer]
    parseList = readIO