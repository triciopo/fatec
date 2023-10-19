# Escrever um algoritmo que leia uma quantidade desconhecida de números e conte quantos
# deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
# A entrada de dados deve terminar quando for lido um número negativo.
# Sabe-se que a entrada deve ser um número entre 0 e 100, validar a entrada para que não permita números fora deste intervalo

.data
	msg:.asciiz "\n Insira um número [0-100]: "
	primeiro:.asciiz "\n Números no intervalo 0-25: "
	segundo:.asciiz "\n Números no intervalo 26-50: "
	terceiro:.asciiz "\n Números no intervalo 51-75: "
	quarto:.asciiz "\n Números no intervalo 76-100: "
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
	
	# Verificar intervalos
	bgt $t0, 100, main
	blt $t0, 0, contagem
	ble $t0, 25, zerovintecinco
	ble $t0, 50, cinquenta
	ble $t0, 75, setentacinco
	ble $t0, 100, cem
	
zerovintecinco:
	add $t1, $t1, 1
	j main
	
cinquenta:
	add $t2, $t2, 1
	j main
	
setentacinco:
	add $t3, $t3, 1
	j main
	
cem:
	add $t4, $t4, 1
	j main
	
contagem:
	# Exibir resultado
	li $v0, 4
	la $a0, primeiro
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, segundo
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, terceiro
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 4
	la $a0, quarto
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
	
