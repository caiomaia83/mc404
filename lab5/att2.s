.data
vetor: 
    .word 10, 20, 30
.text
main:
    la s0, vetor
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0) 

    add s1, t1, t2
    add s1, s1, t0

    addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
    addi a1, s1, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall
    addi a0, zero, 10
    ecall   # Encerra a execução do programa