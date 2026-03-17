main:

    addi t0, zero, 5 # leitura
    ecall

    andi a0, a0, 223

    addi t0, zero, 2
    ecall

    ret