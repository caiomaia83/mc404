main:

    addi t0, zero, 4 # leitura
    ecall

    add t1, zero, a0
    add a0, zero, t1

    addi t0, zero, 1
    ecall

    ret