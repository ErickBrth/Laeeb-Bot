module Main where

import Lib
import qualified Control.Monad.RWS as GHC.Types

selecoes = ["1-Brasil", "2-Alemenha", "3-Argentina", "4-Belgica","5-Holanda", "6-Inglaterra", "7-Franca", "8-Espanha", "9-Portugal","10-Croacia", "11-Uruguai"]
valorSelecao =[9.2, 9.3, 9.0, 9.2, 8.9, 8.8, 9.4, 8.7, 9.0, 8.5, 8.4]
printSelecoes x = do
    print (selecoes !! x)
    verSelecoes(x+1)
verSelecoes x= do
    if x == (length selecoes) then main
        else printSelecoes x


verSaldo s = print "O saldo é de "

incrementa :: Int -> Int                 
incrementa x = x+1

apostar = do
    putStrLn "Time que voce vai apostar"
    input2 <- getLine
    let time1 = (read input2 :: Int)
    putStrLn "Time adversário"
    input3 <- getLine
    let time2 = (read input3 :: Int)
    if (valorSelecao !!(time1-1)) > (valorSelecao !!(time2-1)) then 
        print "Voce ganhou"
    else print "Voce perdeu"
    main

recarregar = print "recarregado"

recarrega :: Int -> Int
recarrega s = s + 1

defineAcao x s = if x == 1 then verSelecoes 0
              else if x == 2 then verSaldo s
              else if x == 4 then apostar
              else if x == 3 then recarrega s

Main :: IO()
main = do 
    putStrLn "Selecione:"  
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x
    


