.data
dato1:      .word 40
dato2:      .word 12
resultado1: .word 0
resultado2: .word 0

.text
.globl main
main:
    # Punto de partida de la actividad: cargar operandos, procesarlos,
    # almacenar los resultados y finalizar.
    lw   $t0, dato1
    lw   $t1, dato2

    # Operación base demostrativa: producto de los operandos
    mul  $t2, $t0, $t1
    sw   $t2, resultado1

    # Bandera de comparación: 1 si son diferentes, 0 si son iguales
    li   $t3, 0
    beq  $t0, $t1, iguales
    li   $t3, 1
iguales:
    sw   $t3, resultado2

    li   $v0, 10
    syscall