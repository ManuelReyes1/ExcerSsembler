/*Instito tecnológico de Tijuana
* Lenguaje de interfaz


* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
.data
var1:  .word 3
/*el puntero toma la var1*/
puntero_var1: .word var1

.text
.global main

main: ldr r0, =puntero_var1
  /*Requerimos de dos ldr para poder acceder al valor en el puntero, 
  por esto son ineficientes*/
  ldr r1, [r0]
  ldr r2, [r1]
  /*Hasta este punto se consigue que tenga el mismo valor r3 que r1*/
  ldr r3, =var1
  bx  lr
