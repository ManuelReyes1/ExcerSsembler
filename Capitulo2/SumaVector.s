/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/

.data
var1: .asciz " La suma es %d \n"
/*Vector en cuestión*/
var2: .word 128, 32, 100, - 30, 124
.text
.global main
  
main: push {r4, lr}
    mov r0, #5
    mov r1, #0
    ldr r2, =var2 //le asignamos r2 a var2
  /* Bucle que hace la suma */
bucle : ldr r3, [r2] , #4
    add r1, r1, r3
    subs r0, r0, #1
    bne bucle //llamamos de nuevo al bucle
    ldr r0, = var1
    bl printf
/* Recuperamos registros y salimos */
    pop {r4, lr}
    bx lr
