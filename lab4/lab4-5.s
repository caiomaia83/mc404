main:

    addi t0, zero, 5 # leitura
    ecall

    add t1, zero, a0

    addi t2, zero, 90

    bge t1, t2, minuscula

    ori a0, a0, 32
    j fim 
    
    minuscula:
        andi a0, a0, 223
        j fim

    fim:

        addi t0, zero, 2
        ecall

        ret 

