# Escreva um programa que pergunte os coeficientes de uma equação de segundo grau (A, B e
# C) e:
# a) se DELTA for maior que zero: imprima “DUAS RAÍZES REAIS”;
# b) se DELTA for igual a zero: imprima apenas “UMA RAÍZ REAL”;
# c) se DELTA menor que zero: imprima a mensagem “NÃO EXISTEM RAÍZES REAIS”.
# (Não é necessário calcular as raízes caso existam).

.data
	msg:.asciiz "\nInsira o A: "
	msg1:.asciiz "\nInsira o B: "
	msg2:.asciiz "\nInsira o C: "
	msg3:.asciiz "\nUMA RAÍZ REAL"
	msg4:.asciiz "\nNÃO EXISTEM RAÍZES REAIS"
	msg5:.asciiz "\nDUAS RAÍZES REAIS"
.text

main:
	# $t0 = A
	# $t1 = B
	# $t2 = C
	# $t5 = delta
	
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber A
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber B
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Exibir a terceira msg
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Receber C
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	# Calcular delta
	mul $t3, $t1, $t1 # b²
	mul $t4, $t0, $t2 # A x C
	mul $t4, $t4, 4 # 4 x (A x C)
	sub $t5, $t3, $t4 # (b²) - (4 x A x C)
	
	# Verificar se Delta menor, maior ou igual a zero.
	beqz $t5, zero
	bltz $t5, menor
	bgtz $t5, maior
	
zero:
	# Exibir a terceira msg
	li $v0, 4
	la $a0, msg3
	syscall
	j fim
menor:
	# Exibir a quarta msg
	li $v0,4
	la $a0, msg4
	syscall
	j fim
maior:
	# Exibir a quinta msg
	li $v0, 4
	la $a0, msg5
	syscall
		
fim:
