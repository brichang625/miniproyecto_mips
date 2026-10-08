.data
piezas:          .word 25                 # Piezas producidas por hora
horas:           .word 8                  # Horas trabajadas
produccionTotal: .word 0                  # Resultado de piezas x horas
comparacion:     .word 0                  # 1 si piezas y horas son distintas
msg_produccion:  .asciiz "Produccion calculada: "

.text
.globl main
main:
    # Cargar los datos desde memoria a registros
    lw    $t0, piezas
    lw    $t1, horas

    # Calcular la produccion y guardarla en memoria
    mul   $t2, $t0, $t1
    sw    $t2, produccionTotal

    # Si piezas y horas son iguales, no imprimir el mensaje
    beq   $t0, $t1, fin

    # Son diferentes: registrar 1 y mostrar mensaje y total
    li    $t3, 1
    sw    $t3, comparacion
    li    $v0, 4
    la    $a0, msg_produccion
    syscall
    li    $v0, 1
    move  $a0, $t2
    syscall

fin:
    li    $v0, 10
    syscall