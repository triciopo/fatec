# Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, imprimindo o resultado.
.data
	msg:.asciiz "\nInsira um valor: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber valor
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Verificar se $t0 > 0 ou $t0 < 0
	bgtz $t0, positivo
	bltz $t0, negativo
	
positivo:
	mul $t0, $t0, 2 # $t0 * 2
	j fim
	
negativo:
	mul $t0, $t0, 3 # $t0 * 3
	
fim:
	# Exibir resultado
	li $v0, 1
	move $a0, $t0
	syscall
	
	
