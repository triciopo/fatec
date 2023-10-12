# Ler dois valores para 2 registradores e efetuar a troca dos valores de forma que o valor do
# primeiro registrador passe ao segundo e o segundo passe ao primeiro. Apresentar os valores
# após a efetivação do processamento da troca.

.data
	msg:.asciiz "\nInsira um valor para $t0: "
	msg1:.asciiz "\nInsira um valor para $t1: "
	msg2:.asciiz "\nNovo $t0: "
	msg3:.asciiz "\nNovo $t1: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber valor em $t0
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber valor em $t1
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Trocar valores
	move $t2, $t0
	move $t0, $t1
	move $t1, $t2
	
resultado:
	# Exibir $t0
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	# Exibir $t1
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
