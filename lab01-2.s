main:
    addi t0, zero, 4      # # t0 = 4 e a0 = num
    ecall                 # chamamos a leitura

    add t1, zero, a0      # t1 = a0 (primeiro numero) e vamos ler o segundo

    srli t3, t1, 2

    slli t4, t1, 2


    addi a0, t3, 0

    addi t0, zero, 1
    ecall

    addi a0, t4, 0

    addi t0, zero, 1
    ecall