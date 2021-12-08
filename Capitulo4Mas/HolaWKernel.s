/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 10/12/2021
*/

.data

cadena: .asciz  "Hola Mundo! \n"
cadenafin:

.text
.global main

main: push  {r7, lr} 
  mov r0, #1
  ldr r1, =cadena //a r1 le damos cadena
  mov r2, #cadenafin-cadena //generamos la longitud
  mov r7, #4 
  swi #0 
  mov r0, #0 
  pop {r7, lr} 
  bx  lr //salimos
