module Main where

import System.Random


selecoes = ["1- Brasil", "2- Alemenha", "3- Argentina", "4- Belgica","5- Holanda", "6- Inglaterra", "7- Franca", "8- Espanha", "9- Portugal","10- Croacia", "11- Uruguai", "12- Dinamarca", "13- servia", "14- suica", "15- ira", "16- coreia do sul"]
valorSelecao = [9.2, 9.3, 9.0, 9.2, 8.9, 8.8, 9.4, 8.7, 9.1, 8.5, 8.4, 8.7, 8.0, 8.8, 7.5, 7.7]



printSelecoes x s = do
    print (selecoes !! x)
    verSelecoes(x+1) s

verSelecoes x s = do
    if x == length selecoes then main2 s
    else printSelecoes x s


verSaldo s =do
     print "O saldo e de "
     print s
     main2 s


apostar s = do
    time1 <- randomRIO (1,8 :: Int)
    time2 <- randomRIO (9,16 :: Int)
    putStrLn "Times da rodada:"
    print (selecoes !! time1)
    print (selecoes !! time2)
    putStrLn "Time que voce vai apostar: "
    input2 <-getLine
    let timeApostado = (read input2 :: Int)
    putStrLn "Valor da aposta"
    input5 <- getLine
    let valorAposta = (read input5 :: Int)
    if valorAposta > s then do
        print "Saldo insuficiente"
        main2 s
        else do
            rodardados <- randomRIO (1,6 :: Int)
            print rodardados
            if (valorSelecao !! time1) > (valorSelecao !! time2) then do
                if rodardados < 4 then do
                    if timeApostado == 1 then do
                        print "voce ganhou a aposta"
                        main2 (s+valorAposta)
                    else do
                        print "voce perdeu a aposta"
                        main2 (s - valorAposta)
                else do
                    if timeApostado == 2 then do
                        print "voce ganhou a aposta"
                        main2 (s+valorAposta)
                    else do
                        print "voce perdeu a aposta"
                        main2 (s - valorAposta)
            else do
                if rodardados < 4 then do
                    if timeApostado == 2 then do
                        print "voce ganhou a aposta"
                        main2 (s+valorAposta)
                    else do
                        print "voce perdeu a aposta"
                        main2 (s - valorAposta)
                else do
                    if timeApostado == 1 then do
                        print "voce ganhou a aposta"
                        main2 (s+valorAposta)
                    else do
                        print "voce perdeu a aposta"
                        main2 (s - valorAposta)

recarregar = do
    putStrLn "Digite o valor da recarga"
    input4 <- getLine
    let valor = (read input4 :: Int)
    putStrLn "Saldo recarregado"
    main2 valor



defineAcao x s
  | x == 1 = verSelecoes 0 s
  | x == 2 = verSaldo s
  | x == 4 = apostar s
  | x == 3 = recarregar
 -- | x == 5 = menuCopa s
  | otherwise = main2 s



main = do
    putStrLn "Selecione:"
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
   -- putStrLn "5- Laeeb bot Copa do Mundo FIFA"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x 20

main2 s = do
    putStrLn "Selecione:"
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
  --  putStrLn "5- Laeeb bot Copa do Mundo FIFA"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x s




















{-
    
menuCopa s = do
    putStrLn "Selecione:"
    putStrLn "1- Oitavas de Final"
    putStrLn "2- Quartas de Final"
    putStrLn "3- Semifinal"
    putStrLn "4- Final"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcaoCopa x 20

menuCopa2 s = do
    putStrLn "Selecione:"
    putStrLn "1- Oitavas de Final"
    putStrLn "2- Quartas de Final"
    putStrLn "3- Semifinal"
    putStrLn "4- Final"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcaoCopa x s

defineAcaoCopa x s
    | x == 1 = oitavas s
 --   | x == 2 = quartas s
--    | x == 3 = semifinal s
 --   | x == 4 = final s
    | otherwise = menuCopa2 s

--oitavas s = do;
{-
    putStrLn "digite os confrontos: "
    timex1 <- getLine
    timex2 <- getLine
    let x3 = (read timex1 :: Int)
    let x4 = (read timex2 :: Int)
    -}
    

--quartas s = do

--semifinal s = do

--final s = do
-}
    
    


