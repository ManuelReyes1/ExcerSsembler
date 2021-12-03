/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
  .global main
  
main: mov r1, #1
  mov r2, #2
  bl nivel1
  mov r5, #5 
     /*Para permitir más niveles de subrutinas sin petarlo
       almacena en pila con push y pop lr*/
nivel1: push  {lr}
  mov r3, #3
  bl nivel2
  /*manejo en pila de lr*/
  pop {lr}
  bx lr
nivel2: mov r4, #4
  bx lr
