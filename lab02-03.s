main:

    # definimosos contadores
    addi s0, zero, 0
    addi s1, zero, 10

    # criamos a label de loop
    loop:
        # realizamos a comparacao para ver se continuamos ou nao 
        bge s0, s1, fim # quando s0 for maior que 10 = s1 vamos para de iterar e ir para o final

        # leitura
        addi t0, zero, 4
        ecall

        # somar 2 ao numero
        addi a0, a0, 2

        # escritura
        addi t0, zero, 1
        ecall

        j loop

    fim:
        ret
    
    ret
