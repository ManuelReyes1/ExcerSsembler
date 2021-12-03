/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/  
      .data
      .text
      .global main

main:
        ldr r1, =a
        ldr r1, [r1]
        ldr r2, =b
        ldr r2, [r2]
        cmp r1, r2
sisI:
        r1, #1
        b final
sino:
        r1, #0
final:
      bx lr
        
