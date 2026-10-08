# Producción de una fábrica en MIPS

**Asignatura:** [Código y nombre de la materia]  
**Integrantes:** Briana Chang y Jose Gabela  
**Año:** 2026  
**Fecha:** 8 de octubre de 2026

---

## Descripción

### Escenario

Una máquina produce 25 piezas por hora y trabaja durante 8 horas.

### Resultado

El programa calcula la producción total (25 × 8 = 200 piezas) y compara piezas por hora con las horas trabajadas. Si son diferentes, muestra `Produccion calculada: 200`; si son iguales, termina sin imprimir el mensaje.

## Análisis

| Dato / resultado | Valor / propósito | Operación requerida | Instrucción MIPS |
|---|---:|---|---|
| `piezas` | 25 piezas por hora | Cargar desde memoria | `lw` |
| `horas` | 8 horas trabajadas | Cargar desde memoria | `lw` |
| `produccionTotal` | 200 piezas | Multiplicar y guardar | `mul`, `sw` |
| `comparacion` | 1 si son diferentes, 0 si son iguales | Comparar y controlar flujo | `beq`, `li`, `sw` |
| Salida | Mensaje y total en pantalla | Mostrar texto y entero | `syscall` |

## Implementación

- `version_base/programa_base.s`: programa base con datos iniciales, carga, procesamiento y almacenamiento.
- `version_final/programa_final.s`: solución del escenario de fábrica.

Para ejecutar, abre `programa_final.s` en MARS o QtSPIM y ensambla y ejecuta el programa. El resultado esperado es `Produccion calculada: 200`.

## Evidencias de ejecución

Añadir capturas reales del simulador a `evidencias/`:

- `codigo.png`: código cargado en el simulador.
- `registros.png`: registros `$t0 = 25`, `$t1 = 8`, `$t2 = 200`, `$t3 = 1`.
- `resultado.png`: salida `Produccion calculada: 200`.

Las capturas están pendientes de incorporar.

## Conclusiones

La actividad permitió comprender el recorrido de los datos desde memoria hacia registros, su procesamiento y el almacenamiento de resultados. La comparación condicional requirió traducir el enunciado a un flujo de control: imprimir únicamente cuando las cantidades son distintas. La ejecución práctica refuerza el vínculo entre las instrucciones y el comportamiento observable del programa.

## Documentación

El reporte consolidado está en [`documentacion/reporte_proyecto.pdf`](documentacion/reporte_proyecto.pdf).

## Bibliografía

University of New South Wales. (n.d.). *MIPS instruction set*. https://cgi.cse.unsw.edu.au/~cs1521/current/resources/mips-guide.html

MARS. (n.d.). *MIPS Assembler and Runtime Simulator*. http://courses.missouristate.edu/kenvollmar/mars/

Patterson, D. A., & Hennessy, J. L. (2021). *Computer organization and design: The hardware/software interface* (6th ed.). Morgan Kaufmann.
