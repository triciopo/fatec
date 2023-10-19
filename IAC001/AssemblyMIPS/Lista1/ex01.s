# A imobiliária Imóbilis vende apenas terrenos retangulares. Faça um algoritmo para ler as dimensões de um terreno e depois exibir a área do terreno.

.data
	msg:.asciiz "\n Digite o tamanho da base: "
	msg1:.asciiz "\n Digite o tamanho da altura: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber base
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber altura
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Calcular área
	mul $t2, $t0, $t1
	
	# Exibir área
	li $v0, 1
	move $a0, $t2
	syscall
