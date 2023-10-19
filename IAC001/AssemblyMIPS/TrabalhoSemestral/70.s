# Faça um algoritmo que receba um número (1 < número <= 10000) e converta para octal. Validar a entrada. 

.data
	msg1:.asciiz "Insira um número (2-10000): "
	msg2:.asciiz "Resultado em octal: "
	restos:.word 24
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg1
	syscall
    
	# Receber o número
	li $v0, 5
	syscall
	add $t0, $v0, 0

	# Validar entrada (1 < número <= 10000)
	blt $t0, 2, main
	bgt $t0, 10000, main
    
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg2
	syscall
    	
converter:
	# Dividir por 8, guardar quociente e resto no $t0 e $t1
	div $t0, $t0, 8
	mflo $t0
	mfhi $t1

	sw $t1, restos($t3) # Guardar resto da divisão na array
	addi $t3, $t3, 4 # aumentar índice da array
	addi $t4, $t4, 1 # Contador de índices
    
	# Verificar se quociente = 0
	beqz $t0, resultado_loop
	bne $t0, 0, converter

resultado_loop:
	# Atribuir a posição anterior da array em $t5
	subi $t3, $t3, 4
	lw $t5, restos($t3)
    
	# Exibir valor na posição [$t3]
	li $v0, 1
	addi $a0, $t5, 0
	syscall
    
	# Diminuir contador e comparar
	subi $t4, $t4, 1
	bne $t4, 0, resultado_loop
    
fim:
	# Sair do programa
	li $v0, 10
	syscall