# Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se
# somar os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se
# atribuir o resultado para uma variável C e mostrar seu conteúdo na tela.
.data
	msg:.asciiz "\n Insira o primeiro valor: "
	msg1:.asciiz "\n Insira o segundo valor: "
.text

main:
	# Exibir a primeira mensagem
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber o primeiro valor
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda mensagem
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o segundo valor
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Verificar se os valores são iguais ou diferentes
	beq $t0, $t1, igual
	bne $t0, $t1, diferente
	
igual:
	# t0 + t1
	add $t3, $t0, $t1
	li $v0, 1
	move $a0, $t3
	syscall
	j fim

diferente:
	# t0 * t1
	mul $t3, $t0, $t1
	li $v0, 1
	move $a0, $t3
	syscall
fim:
