# Desenvolver um algoritmo que leia a altura, em centímetros de 15 pessoas. Este programa deverá calcular e mostrar:
# a. A menor altura do grupo;
# b. A maior altura do grupo;

.data
	msg:.asciiz "\nDigite a altura (em cm): "
	msg1:.asciiz "\nMenor altura: "
	msg2:.asciiz "\nMaior altura: "
.text

main:
	li $t0, 1
	
	# Exibir primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber altura
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	add $t2, $t1, 0
	add $t3, $t1, 0
	
loop:
	bge $t0, 15, fim
	# Exibir primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber altura
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	add $t0, $t0, 1
	bgt $t1, $t3, maior
	blt $t1, $t2, menor
	
	ble $t0, 15, loop
	bgt $t0, 15, fim
	
maior:
	move $t3, $t1
	j loop
	
menor:
	move $t2, $t1
	j loop
	
fim:
	# Exibir resultado
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
