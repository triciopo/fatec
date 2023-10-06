# A empresa Hipotheticus paga R$10,00 por hora normal trabalhada, e R$15,00 por hora extra.
# Faça um algoritmo para calcular e imprimir o salário bruto e o salário líquido de um determinado
# funcionário. Considere, também, uma entrada de desconto para calcular o salário líquido.

.data
	msg:.asciiz "\nInsira a quantidade de horas normais trabalhadas: "
	msg1:.asciiz "\nInsira a quantidade de horas extras trabalhadas: "
	msg2:.asciiz "\nInsira o valor do desconto: "
	msg3:.asciiz "\nSalário bruto: "
	msg4:.asciiz "\nSalário líquido: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber o primeiro valor
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg 
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o segundo valor
	li $v0, 5 
	syscall
	add $t1, $v0, 0
	
	# Exibir a terceira msg 
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Receber o terceiro valor
	li $v0, 5 
	syscall
	add $t2, $v0, 0
	
	# Calcular salário bruto
	mul $t3, $t0, 10
	mul $t4, $t1, 15
	add $t5, $t3, $t4
	
	# Calcular salário líquido
	sub $t6, $t5, $t2
	
	# Exibir salário bruto
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t5
	syscall
	
	# Exibir salário líquido
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	