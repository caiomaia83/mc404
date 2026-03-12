# vamos cirar um loop infinito que le um numero soma dois e  imprime na tela

main:

    # realizamos a leitura para o a0
    addi t0, zero, 4
    ecall
    # mudamos para o s0
    add s0, a0, zero
    # somamos dois
    addi s0, s0, 2


    add a0, s0, zero

    addi t0, zero, 1
    ecall
    j main
    ret
