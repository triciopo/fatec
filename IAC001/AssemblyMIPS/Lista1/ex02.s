# Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo vendida respectivamente por 10, 12 e 15 reais. 
# Construa um algoritmo em que o usuário forneça a quantidade de camisetas pequenas, médias e grandes referentes a uma venda, e a máquina
# informe quanto será o valor arrecadado.

.data
	msg:.asciiz "\nDigite a quantidade de camisetas pequenas: "
	msg1:.asciiz "\nDigite a quantidade de camisetas médias: "
	msg2:.asciiz "\nDigite a quantidade de camisetas grandes: "
.text
	
main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber quantidade de camisetas pequenas
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber quantidade de camisetas médias
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Exibir a terceira msg
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Receber quantidade de camisetas grandes
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	# Calcular valor arrecadado
	mul $t3, $t0, 10
	mul $t4, $t1, 12
	mul $t5, $t2, 15
	
	add $t3, $t3, $t4
	add $t3, $t3, $t5
	
	# Exbir valor arrecadado
	li $v0, 1
	move $a0, $t3
	syscall