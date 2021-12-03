/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/  
      .data
      .text
      .global main

main:
        ldr r1, =a //r1 toma a
        ldr r1, [r1]
        ldr r2, =b //r2 toma b
        ldr r2, [r2]
        /*Los comparamos*/
        cmp r1, r2
sisI:
      /*r1 toma valor de 1*/
        mov r1, #1
        b final
sino:
      /*r1 toma valor de 0*/
        mov r1, #0
final:
      /*Se imprime el valor que haya tomado*/
      bx lr
        
