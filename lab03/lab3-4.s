main:
    
    #  op de leiitura
    addi t0, zero, 4
    ecall

    # movemmos o num lido para o s0 s0 se torna o num segredo
    add s0, zero, a0

    addi t0, zero, 4
    ecall

    #  movemos  o num lido para o s1 s1 se torna o numero a codificar
    add s1, zero, a0

    # fazemos  umm xor  para obter o num codificado
    xor s2, s0,s1 # s2 e o num codifficado

    # movemos o codificado para o aa0
    add a0, zero, s2

    addi t0, zero, 1
    ecall

    ret

