/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
       .global main

main:
        push    {r4, r5, r6, lr}
        mov     r4, #0
        ldr     r5, .L7
bfor:
        mov     r1, r4
        mov     r0, r5
        add     r4, r4, #1
        bl      printf
        cmp     r4, #6
        bne     bfor
        ldr     r5, .L7
        mov     r4, #0
bwhile:
        mov     r1, r4
        mov     r0, r5
        add     r4, r4, #1
        bl      printf
        cmp     r4, #6
        bne     bwhile
        mov     r0, #0
        pop     {r4, r5, r6, pc}
.L8:
        .align  2
.L7:
        .word   .LC0
        .section        .rodata.str1.1
.LC0:
        .ascii  " %d\012 \000"
