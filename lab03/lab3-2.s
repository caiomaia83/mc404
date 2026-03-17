# utilizei  a solucao do ultimo exercicio mas poderiamos  ter feito um and com 3 ( 0011 ) um numero so nao e multiplod e 4 se  tiver alguma dessas  2 casas preenchidas
# depois poderiamos fazer uma branch,, se o resultado fosse 0 o  num e multiplo e se fosse  diferente  nao eh


main: 

    # vamos ler  uma enntrada do usuario
    addi t0, zero, 4 # colcamos 4 em t0
    ecall # realizamos a call de funcao
    add s3, zero, a0

    # vamos colocar o valor de 1 no s0
    addi s0,  zero, 1


    # vamos checar se e impar ou par
    # se for  impar o and  vai dar 1 e se for par vai dar 0
    and s1, s0, s3

    # vamos precisar de umm registrador com o valor de  0 tambem
    addi s2, zero, 0

    bne s1, s2, else # se s1 for igual a 0 = s2 vamos para o bloco para

    # se  rodar  aqui eh pq  nao pulou e o  num e par

    # se o numero  for par vamos  dividir  por  2 e ver se e  par ou imppar novamente, se for par e porque e divisivel por 4
    # estamos dividindo  o numero por 2 e vendo se ele ainda e divisivel

    srli s3, s3, 1

    and s4, s0, s3
    bne s4, s2,  else

    addi a0, zero, 83 # adicionamos  o  valor de  S

        # realizammos a impressao de caracter
    addi t0, zero, 2
    ecall

    j  fim

    # se veio para ca e impar e impar nao e multo de 4 
    else:

        addi a0, zero, 78 # adicionamos  o  valor de  N

        # realizammos a impressao de caracter
        addi t0, zero, 2
        ecall

    fim:
        ret

