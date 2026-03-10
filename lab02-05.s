# esse codigo recebe um numero subtrai 10 e imprime o resultado, ele imprime corretamente numeros negativoas

main:
addi s3, zero , 10
    # le um numero do teclado
  addi t0, zero, 4
  ecall    

  # salvar esse numero em s0
  add s0, a0, zero

  # qual sera o valor desse num apos subtracao

  addi t0, zero, 10
  # se o num for maior ou igual que 10 sera positivo
  bge s0, s3, positivo

    # se o num for menor que 10 sera negativo
  blt s0, s3, negativo

  negativo:

    # imprimos um - de caracter negativo
    addi a0, zero, 45
    addi t0, zero, 2
    ecall
    
    # subtraimos o num de 10 e imrpimimos como negativo
    sub a0, s3, s0
    addi t0, zero, 1
    ecall
    j fim

  positivo:
    # se for positivo fazemos a contar e imprimimos direto
    addi a0, s0, -10
    
    addi t0, zero, 1
    ecall 
    j fim


    fim:
        ret
  ret