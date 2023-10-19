# Ler um número inteiro e imprimir a saída da seguinte forma:
# CENTENA = x
# DEZENA = y
# UNIDADE = z
# Exemplo:
# Entrada = 517
# Saída:
# CENTENA = 5
# DEZENA = 1
# UNIDADE = 7
# *Sabe-se que a entrada deve ser um número entre 100 e 999, validar a entrada para que não permita números fora deste intervalo

.data
	msg:.asciiz "\n Insira um valor (100-999): "
	centena:.asciiz "\n CENTENA: "
	dezena:.asciiz "\n DEZENA: "
	unidade:.asciiz "\n UNIDADE: "
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
	
	# Verificar se 100 < valor < 999
	blt $t0, 100, main
	bgt $t0, 999, main
	
    	# Separar a centena, a dezena e a unidade
	# CENTENA
    	div $t3, $t0, 100

	# DEZENA
	rem $t4, $t0, 100
	div $t4, $t4, 10
	
	# UNIDADE
	rem $t5, $t0, 10

    	# Imprimir a saída
    	li $v0, 4
    	la $a0, centena
    	syscall
   	move $a0, $t3
    	li $v0, 1
    	syscall

    	li $v0, 4
    	la $a0, dezena
    	syscall
    	move $a0, $t4
    	li $v0, 1
	syscall

    	li $v0, 4
    	la $a0, unidade
    	syscall
    	move $a0, $t5
    	li $v0, 1
    	syscall

	

