module Main where

import System.Random 


selecoes = ["1- Brasil", "2- Alemenha", "3- Argentina", "4- Belgica","5- Holanda", "6- Inglaterra", "7- Franca", "8- Espanha", "9- Portugal","10- Croacia", "11- Uruguai", "12- Dinamarca", "13- servia", "14- suica", "15- ira", "16- coreia do sul"]
valorSelecao = [9.2, 9.3, 9.0, 9.2, 8.9, 8.8, 9.4, 8.7, 9.0, 8.5, 8.4,8.7,8.0,8.8,7.5,7.7]



printSelecoes x s = do
    print (selecoes !! x)
    verSelecoes(x+1) s

verSelecoes x s = do
    if x == (length selecoes) then main2 s
    else printSelecoes x s


verSaldo s =do
     print "O saldo e de "
     print s
     main2 s


apostar s = do
    putStrLn "Time que voce vai apostar"
    input2 <- getLine
    let time1 = (read input2 :: Int)
    putStrLn "Time adversário"
    input3 <- getLine
    let time2 = (read input3 :: Int)
    putStrLn "Valor da aposta"
    input5 <- getLine
    let valorAposta = (read input5 :: Int)
    if valorAposta > s then do
        print "Saldo insuficiente"
        main2 s
        else do
            if (valorSelecao !!(time1-1)) > (valorSelecao !!(time2-1)) then do
                print "Voce ganhou"
                main2 (s+valorAposta)
                
            else do print "Voce perdeu"
                    main2 (s-valorAposta)

    

recarregar = do
    putStrLn "Digite o valor da recarga"
    input4 <- getLine
    let valor = (read input4 :: Int)
    putStrLn "Saldo recarregado"
    main2 valor




defineAcao x s = if x == 1 then verSelecoes 0 s
              else if x == 2 then verSaldo s
              else if x == 4 then apostar s
              else if x == 3 then recarregar
              else main2 s
                


main = do 
    numeroAleatorio <- randomRIO (1,16 :: Int)
    putStrLn $ show numeroAleatorio
    putStrLn "Selecione:"  
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x 20

main2 s = do 
    numeroAleatorio <- randomRIO (1,16 :: Int)
    putStrLn $ show numeroAleatorio
    putStrLn "Selecione:"  
    putStrLn "1- ver selecoes"
    putStrLn "2- ver saldo"
    putStrLn "3- recarregar o saldo"
    putStrLn "4- Apostar"
    input1 <- getLine
    let x = (read input1 :: Int)
    defineAcao x s


