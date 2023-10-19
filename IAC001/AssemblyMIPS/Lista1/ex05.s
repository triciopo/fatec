# Faça um algoritmo que receba o valor dos catetos de um triângulo, calcule e mostre o valor da hipotenusa.

.data
	msg:.asciiz "\n Insira o valor do primeiro cateto: "
	msg1:.asciiz "\n Insira o valor do segundo cateto: "
	msg2:.asciiz "\n Hipotenusa: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber o valor do primeiro cateto
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o valor do segundo cateto
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Calcular a hipotenusa
	mul $t0, $t0, $t0
	mul $t1, $t1, $t1
	add $t2, $t0, $t1
	
	# loop
	li $t4, 0
	move $t3, $t2

raiz:
    	# Retirar raiz de $t2 e exibir
    	div $t5, $t2, $t3   # N/x 
    	add $t3, $t5, $t3   # x + N/x 
    	div $t3, $t3, 2     # (x + N/x)/2 

    	#loop
    	add $t4, $t4, 1 
    	blt $t4, 20, raiz
    
fim:
	# Exibir resultado
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
