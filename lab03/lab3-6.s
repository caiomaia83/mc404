# o programa vai ficar realizando a divisao e imprimindo o resto

main:

    # op  de leitura
    addi t0, zero, 4
    ecall

    #  armazeamos  o lido em s0
    add s0, zero, a0

    # vamos usar  srl e and para fazer a conversao

    # vamos ver se o num e impar e dps dividir por 2 ec continur ate zerar
    # se forr impar imprimimos 1 e se for par zero

    # queremos  imprimir  com 32 bits entao se  zerar vamos  ficar imprimindo zero ate o loop acabar

    addi s1, zero, 33 # contador do qual vamos ir subtraindo (antes do teste) e nao vamos rodar para s1 =0 entao teremos exatamente 32 iteracoes

    addi s2, zero, 1 # vamos fazer o and com s2=1 para verificar paridade

    loop:
        addi s1, s1, -1 # decrementamos o contador
        beq s1, zero, fim # se ja rodamos 32  vezes paramos

        beq s0,  zero, num_ja_processado # ja convertemos o numero inteiro e vamos preencher o resto dos bits  com 0

        # vamos ver se o num e impar

        and s3, s0, s2 # se s3 for 0 e par se nao e impar

        bne s3, zero, else_impar

        #  se entrarmos  aqui eh par vamos imprimir 0
        addi a0, zero, 0
        addi t0, zero, 1
        ecall 

        # vamos deslocar
        srli s0, s0, 1

        j loop

        else_impar:
            addi a0, zero, 1
            addi t0, zero, 1
            ecall 

            srli s0, s0, 1

            j loop

        #  vamos imprimir 0  ate  o final
        num_ja_processado:
            addi a0, zero, 0
            addi t0, zero, 1
            ecall 

            j loop

    fim:
        ret
