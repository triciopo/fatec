# Escreva um algoritmo que leia (em números inteiros) o valor da compra de um produto da Loja
# Vende Tudo. A loja só vende produtos de valor entre R$1000.00 e R$9999.99 (Que deve ser
# validado na entrada). A loja permite pagar o valor em parcelas fixas. O algoritmo deve ler
# também o valor da parcela a ser paga, que deve ser um valor entre R$100.00 e R$500.00 (Que
# deve ser validado na entrada). O algoritmo, sabendo que a última parcela pode ser de valor
# inferior às anteriores, deve calcular quantas parcelas serão pagas.

.data
	msg:.asciiz "\nInsira o valor da compra (R$1000 - R$ 9999): "
	msg1:.asciiz "\nInsira o valor das parcelas (R$100 - R$ 500): "
	msg2:.asciiz "\nO numero de parcelas a ser paga é: "
	msg3:.asciiz "\nE uma parcela adicional de R$: "
.text

main:
	# Exibir a primeira msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# Receber o valor da compra
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	# Validar valor até obter um dentro do intervalo (1000-9999)
	blt $t0, 1000, loop1
	bgt $t0, 9999, loop1
	j parcelas
	
loop1:
	# Validar valor da compra -> 9999 > x > 1000
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	blt $t0, 1000, loop1
	bgt $t0, 9999, loop1
	
parcelas:
	# Exibir a segunda msg
	li $v0, 4
	la $a0, msg1
	syscall
	
	# Receber o valor das parcelas
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	# Validar valor até obter um dentro do intervalo (100-500)
	blt $t1, 100, loop2
	bgt $t1, 500, loop2
	j calc
	
loop2:
	# Validar valor da parcela || 500 > y > 100
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	blt $t1, 100, loop2
	bgt $t1, 500, loop2

calc:
	div $t2, $t0, $t1 # EX: 9999 / 500
	mfhi $t3 # resto da divisão
	
	# Exibir a terceira msg
	li $v0, 4
	la $a0, msg2
	syscall
	
	# Exibir a quantidade de parcelas
	li $v0, 1
	move $a0, $t2
	syscall
	
	# Verificar se há parcelas adicionais
	bgt $t3, 0 adicional
	j fim

adicional:
	# Exibir a quarta msg
	li $v0, 4
	la $a0, msg3
	syscall
	
	# Exibir o valor da parcela adicional
	li $v0, 1
	move $a0, $t3
	syscall	

fim:
