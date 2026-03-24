.data
vetor: 
    .word 10, 20, 30
.text
main:
    la s0, vetor
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0) 

    addi t0, t0, 1
    addi t1, t1, 1
    addi t2, t2, 1
número
    sw t0, 0(s0)
    sw t1, 4(s0)
    sw t2, 8(s0)

    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0) 

# backspace = 08

    addi s5, zero, 32

    addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
    addi a1, t0, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall

    addi a0, zero, 11  # Seletor da ecall (1) para imprimir um número 
    addi a1, s5, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall

    addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
    addi a1, t1, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall

    addi a0, zero, 11  # Seletor da ecall (1) para imprimir um número 
    addi a1, s5, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall

    addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
    addi a1, t2, 0  # Parâmetro da ecall (a1) com o número a ser impresso
    ecall

    addi a0, zero, 10
    ecall   # Encerra a execução do programa