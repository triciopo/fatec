# Faça um algoritmo que calcule e mostre a área de um trapézio usando apenas números inteiros. Sabe-se que: A = (base maior + base menor) * altura)/2

.data
	msg:.asciiz "\nInsira a base maior: "
	msg1:.asciiz "\nInsira a base menor: "
	msg2:.asciiz "\nInsira a altura: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber a base maior
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber a base menor
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Exibir a terceira msg
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Receber a altura
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	# Calcular a área
	add $t3, $t0, $t1 # B + b
	mul $t3, $t3, $t2 # (B + b) * 2
	div $t3, $t3, 2   # ((B + b) * 2) / 2
	
	# Exibir a área
	li $v0, 1
	move $a0, $t3
	syscall