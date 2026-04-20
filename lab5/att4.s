

.data
matriz:
    0,0,0,0,0,0
.text
main:
    la s0, matriz # endereco da matriz
    addi s1, zero, 7 # limite do for
    addi s2, zero, 1 # contador

    addi s3, zero, 2 # num de linhas
    addi s4, zero, 3 # num de colunas

    for:
        beq s1, s2, fim
        
        # o contador tambem armazena o indice do elemento em que estamos




        addi s2, zero, 1
        addi s0, s0, 4
        j for

0 0 0
0 0 0

4 8 12
16 20 24

s0/4 -> deslocar duas vezes para a esquerda
ai teremos o indice

linha = indice // numero_de_colunas
coluna = indice % numero_de_colunas

1 2 3 
4 5 6