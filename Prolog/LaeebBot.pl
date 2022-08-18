selecoes(R):- R = (["1- Brasil", "2- Alemenha", "3- Argentina", "4- Belgica",
                 "5- Holanda", "6- Inglaterra", "7- Franca", "8- Espanha", "9- Portugal",
                 "10- Croacia", "11- Uruguai", "12- Dinamarca", "13- servia", "14- suica",
                 "15- ira", "16- coreia do sul"]).
                 
randseq(K, N, List) :- /*lista com os valores das selecoes*/
      randset(16, 93, Set),
      random_permutation(Set, List).

mostra_selecoes() :- 
    selecoes(R),
    write(R),nl,
    main.

ver_saldo(Saldo,NovoSaldo):- 
    write("Seu saldo e: "),  
    write(Saldo), nl,
    main. 

recarregar(Saldo,NovoSaldo):-  
    write("Digite o valor a ser recarregado: "),
    read(Num),                        /*logica de recarregar aqui,chamo penas as funcoes de acordo com as opcoes escolhidas*/
    NovoSaldo is Saldo + Num,
    write(NovoSaldo),
    main.  

apostar(Saldo,NovoSaldo):-
    write("Digite o time 1: "),
    read(time1),
    write("Digite o time 2: "),
    read(time2).

define_acao(Option,Saldo,NovoSaldo) :-
    (Option =:= 1 -> mostra_selecoes();
    Option =:= 2 -> ver_saldo(Saldo,NovoSaldo);
    Option =:= 3 -> recarregar(Saldo,NovoSaldo);
    Option =:= 4 -> apostar(Saldo,NovoSaldo)).


main:-
    write("Selecione:"), nl,
    write("1- ver selecoes"), nl,
    write("2- ver saldo"), nl,
    write("3- recarregar o saldo"), nl,
    write("4- Apostar"), nl,
    read(Option),
    Saldo is 20,
    define_acao(Option,Saldo,NovoSaldo),halt.
