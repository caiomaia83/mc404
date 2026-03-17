main:

    addi t0, zero, 4    
    ecall

    add s0, zero, a0
    addi s1, zero, 9

    bge s0, s1, caracter

    addi a0, s0, 48
    addi t0, zero, 2
    ecall 

    j fim

    caracter:

        addi a0, s0, 55
        addi t0, zero, 2
        ecall 

        j fim
    
    fim:

        addi a0, zero, 104

        addi t0, zero, 2
        ecall 
 
