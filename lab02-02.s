# agora o loop vai para quando o input for igual a 0 

main:

    # realizamos a leitura para o a0
    addi t0, zero, 4
    ecall
    # mudamos para o s0
    add s0, a0, zero
    beq s0, zero, fim

    # somamos dois
    addi a0, s0, 2

    addi t0, zero, 1
    ecall
    bne s0, zero, main

    fim: 
        fim 

    ret

