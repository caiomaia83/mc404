main: 
    # I = 73 na tabela asc
    # P = 80 na tabela asc

    # vamos ler  uma enntrada do usuario
    addi t0, zero, 4 # colcamos 4 em t0
    ecall # realizamos a call de funcao

    # vamos colocar o valor de 1 no s0
    addi s0,  zero, 1


    # vamos checar se e impar ou par
    # se for  impar o and  vai dar 1 e se for par vai dar 0
    and s1, s0, a0

    # vamos precisar de umm registrador com o valor de  0 tambem
    addi s2, zero, 0

    bne s1, s2, else # se s1 for igual a 0 = s2 vamos para o bloco para

    # se  rodar  aqui eh pq  nao pulou e o  num e par

    addi a0, zero, 80 # colocamos o  valor  de  P em a0

    # fazemos a impressao de caracter
    addi t0, zero, 2
    ecall  

    j  fim

    # se veio para ca e impar
    else:

        addi a0, zero, 73 # adicionamos  o  valor de  I

        # realizammos a impressao de caracter
        addi t0, zero, 2
        ecall

    fim:
        ret

