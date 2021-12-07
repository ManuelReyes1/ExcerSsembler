/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
.data
var1: .asciz  " %d\ n"
.text
.global main

main: push  {r4,lr}

  mov r0, #1
  mov r1, #2
  mov r2, #3
  mov r3, #4
  mov r4, #5
  push  {r4}
  bl  poly3
  add sp, #4
  mov r1, r0
  ldr r0, =var1
  bl  printf
  mov r0, #1
  mov r1, #-1
  mov r2, #1
  mov r3, #-1
  mov r4, #8
  push  {r4}
  bl  poly3
  add sp, #4
  movr1, r0
  ldrr0, =var1
  blprintf
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
  bl  printf
  pop {r4, lr}
  bx  lr
  .equ  param5, 4*1 
poly3:  push  {r4}
  ldr 4, [sp, #param5] 
  smlabb  r3, r2, r4, r3 
  smulbb  r2, r4, r4 
  smlabb  r3, r1, r2, r3 
  smulbb  r2, r2, r4
  smlabb  r0, r0, r2, r3 
  pop {r4}
  bx  lr 
