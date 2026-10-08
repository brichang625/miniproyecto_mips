.data
piezas: .word 25 #piezas por hora
horas: .word 8 #horas trabajadas
produccionTotal: .word 0 #produccion total
comparacion: .word 0 #comparacion
msg_produccion: .asciiz "Produccion calculada: " # Mensajes a imprimir
.text
.globl main
main:
#carga datos desde la memoria
lw $t0, piezas
lw $t1, horas
#multiplica piezas por horas
mul $t2, $t0, $t1
#guarda resultados principales
sw $t2, produccionTotal
sw $t3, comparacion
# Comparar si son diferentes
beq $t0, $t1, fin #si no son diferentes el programa termina sino continua con la impresion
#Guardamos 1 en $t3 para indicar en un registro que la comparacion es diferente
li $t3, 1 #carga 1 de manera inmediata en $t3
sw $t3, comparacion #guarda $t3 en la memoria
#Imprime el texto "Produccion total:"
li $v0, 4
la $a0, msg_produccion #carga el texto almacenado en msg_produccion en $a0
syscall
# Imprimir el resultado de $t2
li $v0, 1
move $a0, $t2 #copia el valor de $t2 en $a0
syscall
fin:
li $v0, 10
syscall