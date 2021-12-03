/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/      
      .global main

main:
        push    {r4, lr}
        ldr     r0, .L5
        bl      printf
        mov     r0, #0
        pop     {r4, pc}
.L5:
        .word   .LC0

        .section        .rodata.str1.1,"aMS",%progbits,1
.LC0:
        .ascii  "Si\000"
.LC1:
        .ascii  "No \000"
