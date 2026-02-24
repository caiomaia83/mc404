# le dois nummeross e realiza as opecaoes and, or e xor
# e tambem soma o resultado

main:
    addi t0, zero, 4      # # t0 = 4 e a0 = num
    ecall                 # chamamos a leitura

    add t1, zero, a0      # t1 = a0 (primeiro numero) e vamos ler o segundo

    addi t0, zero, 4      # t0 = 4 e a0 = num
    ecall                 # chamamos a leitura

    add t2, zero, a0      # t2 = a0 (segundo numero)  

    and t3, t1, t2        # t3 = t1 AND t2
    or t4, t1, t2         # t4 = t1 OR  
    xor t5, t1, t2        # t5 = t1 XOR t2

    # Agora vamos imprimir os resultados

    add a0, zero, t3      # movemos o resultado do and para o a0

    addi t0, zero, 1      # escolhe a operacao de escrita de inteiro (1)
    ecall                 # efetua a operacao de escrita de inteiro

    add a0, zero, t4      # resultado do  or

    addi t0, zero, 1      # escolhe a operacao de escrita de inteiro (1)
    ecall                 # efetua a operacao de escrita de inteiro

    add a0, zero, t5      # resultado do xor

    addi t0, zero, 1      # escolhe a operacao de escrita de inteiro (1)
    ecall                 # efetua a operacao de escrita de inteiro

    add s1, t1, t2    # soma os dois

    add a0, zero, s1    # move  a ssoa para o a0 para impressao

    addi t0, zero, 1      # escolhe a operacao de escrita de inteiro (1)
    ecall                 # efetua a operacao de escrita de inteiro

    
    ret