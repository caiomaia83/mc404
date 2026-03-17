main:
    
    addi t0, zero, 4 # operacao de leitura de inteiro
    ecall

    add s9, zero, a0 # vamos guardar o nosso numero no s9

    addi s0, zero, 7 # inicializamos o nosso contado repare que vamos utilizar o s0
    
    loop:

        addi s10, zero, -1 # se ja estivermos na nona iteracao vamos pular para o fim
        beq s0, s10, fim


        # esse bloco vai nos dizer em qual iteracao estamos
        addi s1, zero, 0
        beq s0, s1, primeira
        addi s1, zero, 1
        beq s0, s1, segunda
        addi s1, zero, 2
        beq s0, s1, terceira
        addi s1, zero, 3
        beq s0, s1, quarta
        addi s1, zero, 4
        beq s0, s1, quinta
        addi s1, zero, 5
        beq s0, s1, sexta
        addi s1, zero, 6
        beq s0, s1, setima
        addi s1, zero, 7
        beq s0, s1, oitava



        # para cada passsada vamos adicionar um numero diferente no s2
        primeira:
            addi s2, zero, 15 # o s2 vai guardar o numero com que vamos fazer o and (comeca em 15 = 1111)
            # precisamos desse and para avaliar cada conjunto de 4 bits individualmente
            and s3, s9, s2
            j execucao
        segunda:
            addi s2, zero, 240
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 4
            j execucao
        terceira:
            addi s2, zero, 0x00000F00
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 8
            j execucao
        quarta:
            addi s2, zero, 0x0000F000
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 12
            j execucao
        quinta:
            addi s2, zero, 0x000F0000
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 16
            j execucao
        sexta:
            addi s2, zero, 0x00F00000
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 20
            j execucao
        setima:
            addi s2, zero, 0x0F000000
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 24
            j execucao
        oitava:
            addi s2, zero, 0xF0000000
            and s3, s9, s2    # o s3 ja tem o nosso numero dps do and
            srli s3, s3, 28
            j execucao


        # essa call vai fazer o and, sempre o and com o a2 que a2 definimos
        execucao:

            # vamos ter que ver se e numero ou caracter  utilizar o lab passado e dai ja imprimos tambem 

            addi s4, zero, 10 # o s4 vai armazenar o ultimo numeor antes dos caracteres para fazermos a comparacao

            bge s3, s4, caracter

            # impressao se for um inteiro
            addi a0, s3, 48
            addi t0, zero, 2
            ecall 

            addi s0, s0, -1 # vamos diminuir o contador
            j loop # voltamos para o loop

            caracter: 

                # impressao se for um caracter
                addi a0, s3, 55
                addi t0, zero, 2
                ecall 

                addi s0, s0, -1 # vamos diminuir o contador
                j loop # voltamos para o loop

    fim:
        
        # imprime o h no final

        addi a0, zero, 104

        addi t0, zero, 2
        ecall 
