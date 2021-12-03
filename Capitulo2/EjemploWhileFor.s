/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
.data
var1:  .asciz "%d\012 \000"
.text
       .global main

main:
        push    {r4, lr}
        mov     r4, #0

bfor:
        mov     r1, r4
        ldr     r0, =var1
        add     r4, r4, #1
        bl      printf
        cmp     r4, #6
        bne     bfor
        pop     {r4, pc}
        pop     {r4, lr}        
        bx      lr
