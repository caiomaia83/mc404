main:
    
    addi t0, zero, 4 # operacao de leitura de inteiro
    ecall

    add s9, zero, a0 # vamos guardar o nosso numero no s9

    addi s0, zero, 0 # inicializamos o nosso contado repare que vamos utilizar o s0




    
    loop:
        add s1, zero, 0 # s1 vai guardar o numero com que queremos comparar para saber em qual iteracao estamos




        beq s0, s1 primeira






        # para cada passsada vamos adicionar um numero diferente no s2
        primeira:
            addi s2, zero, 15 # o s2 vai guardar o numero com que vamos fazer o and (comeca em 15 = 1111)
            # precisamos desse and para avaliar cada conjunto de 4 bits individualmente
            j execucao







        # essa call vai fazer o and, sempre o and com o a2 que a2 definimos
        execucao:
            and s3, s9, s2

            # vamos ter que ver se e numero ou caracter -> utilizar o lab passado e dai ja imprimos tambem 






    fim:
        
        # imprime o h no final

        addi a0, zero, 104

        addi t0, zero, 2
        ecall 
