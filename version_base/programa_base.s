.data
dato1:      .word 25       #piezas por h
dato2:      .word 8        #h trabajadas
resultado1: .word 0        #produccion total
resultado2: .word 0        #comparacion dif

.text
.globl main

main:
#cargar datos
lw $t0, dato1
lw $t1, dato2
#mul piezas por horas
mul $t2, $t0, $t1

#comp si son diferentes
sne $t3, $t0, $t1

#guardar resultados principales
sw $t2, resultado1
sw $t3, resultado2

#restar t0 - t1
sub $t4, $t0, $t1

#restar t1 - t0
sub $t5, $t1, $t0

#div t0 / t1
div $t0, $t1
mflo $t6 #cociente
mfhi $t7 #residuo
#mflo y mfhi para registrar

#comparar si son iguales
seq $t8, $t0, $t1

#fin
li $v0, 10
syscall