.data
vetor3:
    .word 0, 0, 0, 0, 0
vetor: 
    .word 10, 20, 30, 40, 50
vetor2:  
    .word 100, 200, 300, 400, 500
.text
main:
    la s0, vetor
    la s1, vetor2
    la s10, vetor3

    addi s2, zero, 0 # contador
    addi s4, zero, 5 # limite do contador

    for:
        beq s2, s4, fim # condicao de parada

        lw t0, 0(s0) #carrega o iesimo indice
        lw t1, 0(s1) # carrega o iesimo indice

        add t3 t1, t0 # soma os dois que carregamos

        sw t3, 0(s10)

        addi s0, s0, 4 # soma 4 para pegarmos o iesimo+1 indice na proxima iteracao
        addi s1, s1, 4 # idem
        addi s2, s2, 1
        addi s10, s10, 4
        j for # conttinua o loop

    fim:
        la s10, vetor3
        addi s5, zero, 32
        addi s2, zero, 0 # contador
        addi s4, zero, 5 # limite do contador

        for2:
            beq s2, s4, encerra
            lw t3, 0(s10)

            addi a0, zero, 1  # Seletor da ecall (1) para imprimir um número 
            addi a1, t3, 0  # Parâmetro da ecall (a1) com o número a ser impresso
            ecall

            addi a0, zero, 11  # Seletor da ecall (1) para imprimir um caracter 
            addi a1, s5, 0  # Parâmetro da ecall com o espaco
            ecall

            addi s10, s10, 4
            addi s2, s2, 1       
            j for2

    encerra:
        addi a0, zero, 10
        ecall   # Encerra a execução do programa