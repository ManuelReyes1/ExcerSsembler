/*
*/
  .global main

main:
  ldr r1, =vi
  ldr r1, [r1]
  ldr r2, =vf
  ldr r2, [r2]
.L2:
  .word .LC0
  .section  .rodata.str1.1
.LC0:
  .ascii "Hola mundo\000"  
bucle:  cmp r1, r2
  bhi salir
  /* Cuerpo
  del
  bucle */
  ldr r0, .L2
  add r1, r1, #1
  b bucle
salir:
