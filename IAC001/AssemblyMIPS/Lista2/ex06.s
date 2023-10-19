# Escreva um programa que pergunte dois números e indique se são iguais ou diferentes.
# Caso sejam diferentes, mostre o maior e o menor (nesta ordem)

.data
	msg:.asciiz "\nEscreva o primeiro numero: "
	msg1:.asciiz "Escreva o segundo numero: "
	msg2:.asciiz "\nMaior número: "
	msg3:.asciiz "\nMenor número: "
	msg4:.asciiz "\nOs números são iguais."
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber o primeiro número
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o segundo número
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Verificar se $t0 = $t1
	bne $t0, $t1, diferente

igual:
	# Exibir a quarta msg
	li $v0, 4
	la $a0, msg4
	syscall
	j fim
	
diferente:
	# Verificar se $t0 > $t1 ou $t1 > $t0	
	bgt $t0, $t1, maior1
	bgt $t1, $t0, maior2

maior1:
	# Exibir o maior número
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	# Exibir o menor número
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	j fim

maior2:
	# Exibir o maior número
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	# Exibir o menor número
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	j fim

fim:
