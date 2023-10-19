# Fazer um algoritmo que leia 2 números inteiros e exiba a divisão destes. Sabe-se que o 2o número não pode ser zero, 
# portanto, deve-se insistir na solicitação do 2o número até ele ser diferente de 0

.data
	msg:.asciiz "\n Insira o primeiro número: "
	msg1:.asciiz "\n Insira o segundo número: "
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
	
segundo:
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o segundo valor
	li $v0, 5	
	syscall
	add $t1, $v0, 0
	beqz $t1, segundo

div:
	# Dividir $t0 por $t1
	div $t2, $t0, $t1
	
	# Exibir resultado
	li $v0, 1
	move $a0, $t2
	syscall
