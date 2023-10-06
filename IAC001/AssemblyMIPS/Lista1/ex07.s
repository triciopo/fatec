# Faça um algoritmo que leia uma variável e some 5, caso seja par ou some 8, caso seja ímpar, imprimir o resultado desta operação.

.data
	msg:.asciiz "\nInsira um valor: "
.text

main:
	# Exibir primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber valor
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	rem $t1, $t0, 2 # $t0 % 2
	
	beqz $t1, par
	j impar
	
par:
	add $t0, $t0, 5
	j fim
	
impar:
	add $t0, $t0, 8
	
fim:
	# Exibir resultado
	li $v0, 1
	move $a0, $t0
	syscall
