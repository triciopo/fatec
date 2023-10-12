# O proprietário da empresa ABC LTDA precisa de um programa de computador para calcular o
# novo salário que seus funcionários irão receber a partir do mês que vem. Sabendo que o
# aumento de salário para todos os funcionários será de 25%, faça um programa que lê o valor do
# salário atual do funcionário e informa o seu novo salário acrescido de 25% (Por se tratar de
# apenas número inteiros, para calcular 25% deve-se multiplicar o valor por 25 e dividir por 100).

.data
	msg:.asciiz "\nInsira o salário atual do funcionário: "
	msg1:.asciiz "\nNovo salário: R$ "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber salário atual
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Calcular novo salário
	mul $t1, $t0, 25
	div $t1, $t1, 100
	add $t2, $t0, $t1
	
	# Exibir resultado
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
