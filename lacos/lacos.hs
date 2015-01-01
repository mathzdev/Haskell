{-|
	Estruturas e laços de repetição
-}

import Data.IORef

-- Define 'foreach'
foreach = flip mapM_

-- Define 'while'
while test action = do
    val <- test

    if val then do {action;while test action}
		else return ()

-- Define helpers do 'while'
incr ref = modifyIORef ref (+1)

test ref f = do { val <- readIORef ref; return (f val) }

main = do

  foreach [1..10] print

  putStrLn ""

  ref <- newIORef 0

  while (test ref (< 5))

        (do 

	  print "Rodando"

          incr ref)