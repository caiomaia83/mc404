main:

    loop:

        # op de leitura
        addi t0, zero, 4
        ecall

        # se for = 0 encerra
        beq a0, zero, fim

        addi s0, zero, 1
        add s1, zero, a0

        # devemos  somar todos  impares  e todos  pares 
        # temos 1 no s0 e a entrada em s1
        # soma dos pares no s4 e  dos impares no s3

        and s2, s1, s0

        beq s2, zero, par

    # impar

        add s3, s3, s1 

        j loop

    
    par:
        # vamos fazer a soma de todos os pares
        add s4, s4, s1
        j loop


    fim:
        
        sub a0, s3, s4

        addi t0, zero, 1
        ecall