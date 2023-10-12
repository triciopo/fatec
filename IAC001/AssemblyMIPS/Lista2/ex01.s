# Elaborar um programa que apresente o valor da conversão em real (R$) de um valor lido em dólar (US$). 
# O programa deve considerar a cotação do dólar em R$5 (Usar apenas números inteiros). 

.data
	msg:.asciiz "\nInsira o valor em US$ (apenas inteiros): "
	msg1:.asciiz "\nValor em R$: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Recber o valor em dolár
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	mul $t1, $t0, 5 # cotação US$ 1 -> R$ 5
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Exibir o resultado
	li $v0, 1
	move $a0, $t1
	syscall
