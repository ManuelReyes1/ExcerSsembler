/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*   Evalúa x polinomio con esta estructura
*   f(x) = ax3 + bx2 + cx + d
*/

.data
var1: .asciz  "%d\ n"

.text
.global main

main: push  {r4,lr}
/*con registros llenamos los primeros parámetros*/
  mov r0, #1 
  mov r1, #2
  mov r2, #3
  mov r3, #4
  mov r4, #5 //el quinto lo llenamos por pila
  push  {r4}
  bl  poly3 //llamamos a la función que evaluará el polinomio con
  add sp, #4 // los números que llenamos (del 1 a 5)
  mov r1, r0
  ldr r0, =var1
  bl  printf //imprimimos
  
  /*llenamos con otros valores y llamamos una vez más a la función ahora 
  con los nuevos valores que le daremos*/
  
  mov r0, #1
  mov r1, #-1
  mov r2, #1
  mov r3, #-1
  mov r4, #8
  push  {r4}
  bl  poly3
  add sp, #4 
  mov r1, r0
  ldr r0, =var1
  bl  printf //imprimimos segunda llamada ( 1,-1,1,-1,8)
  
  /*hacemos un tercer llamado al método*/
  mov r0, #2
  mov r1, #0
  mov r2, #0
  mov r3, #0
  mov r4, #8
  push  {r4}
  bl  poly3
  add sp, #4
  mov r1, r0
  ldr r0, =var1
  bl  printf //imprimimos tercera llamada (2,0,0,0,8)
  pop {r4, lr}
  bx  lr
  .equ  param5, 4*1 
  /*función/
poly3:  push  {r4}
  ldr 4, [sp, #param5] 
  smlabb  r3, r2, r4, r3 //c*x+d
  smulbb  r2, r4, r4 //x*x
  smlabb  r3, r1, r2, r3 //b*(x*x) + (c*x + d)
  smulbb  r2, r2, r4 //x*(x*x)
  smlabb  r0, r0, r2, r3 //a*x*x*x + b*x*x + c*x+d
  pop {r4}
  bx  lr 
