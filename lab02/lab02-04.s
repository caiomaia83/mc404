main:

    loop:

    # primeira leitura
        addi t0, zero, 4
        ecall
        add s0, zero, a0 # movemos o primeiro valor para o s0

        # segunda leitura
        addi t0, zero, 4
        ecall
        add s1, zero, a0

        # encerramos se qualquer um for 0
        beq s1, zero, fim
        beq s0, zero, fim

        # comparamos e saltamos se o primeiro for maior
        bge s0, s1, firstbigger

        # se continuar para ca ehe3eswdxd xd su e o seguno eh maior ou saoi iguais
        add a0, zero, s1
        addi t0, zero, 1
        ecall
        j loop

    firstbigger:
        add a0, zero, s0
        addi t0, zero, 1
        ecall
        j loop

    fim:
        ret

    ret