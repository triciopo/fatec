# Crie um programa que lê o mês e o ano de nascimento de uma pessoa e o mês e ano atual.
# Calcule e mostre qual é: a idade da pessoa em meses.

.data
	msg:.asciiz "\nDigite o mês de nascimento (1-12): "
	msg1:.asciiz "\nDigite o ano de nascimento: "
	msg2:.asciiz "\nDigite o mês atual: "
	msg3:.asciiz "\nDigite o ano atual: "
	msg4:.asciiz "\nIdade em meses: "
.text

main:
	# Receber o mês de nascimento
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Receber o ano de nascimento
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Receber o mês atual
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	# Receber o ano atual
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
resultado:
	# Calcular idade em meses
	sub $t4, $t3, $t1 # $t4 = ano_atual - ano_nascimento
	sub $t5, $t2, $t0 # $t5 = mes_atual - mes_nascimento
	
	mul $t4, $t4, 12
	add $t6, $t4, $t5
	
	# Exibir resultado
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
