module Main where

import Lib
import qualified Control.Monad.RWS as GHC.Types

selecoes = ["Brasil", "Alemenha", "Argentina", "Belgica","Holanda", "Inglaterra"]

verSelecoes x= do
    if x == (length selecoes) then main
        else print (selecoes !! x)
    verSelecoes (x+1) 


verSaldo = print "saldo é de 1"

defineAcao x = if x == 1 then verSelecoes 0
              else verSaldo 


main = do 
    putStrLn "Selecione:"  
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x
    


