/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 10/12/2021
* 4.6 esbn6.s
*/
  .set  GPBASE, 0x20200000
  .set  GPFSEL0,  0x00
  .set  GPSET0, 0x1c
  .set  GPCLR0, 0x28
  .set  STBASE, 0x20003000
  .set  STCLO,  0x04

.text
  ldr r0, =GPBASE
  mov r1, #0b00000000000000000001000000000000
  str r1, [r0, #GPFSEL0]
  mov r1, #0b00000000000000000000000000010000
  ldr r2, =STBASE

bucle:  bl  espera //llamamos al delay
  str r1, [r0, #GPSET0]
  bl  espera //llamamos al delay
  str r1, [r0, #GPCLR0]
  b bucle
  
/* Con esto retrasamos para que espere 1136 microsegundos */
espera: ldr r3, [r2, #STCLO]
  ldr r4, =1136
  add r4, r3
ret1: ldr r3, [r2, #STCLO]
  cmp r3, r4
  bne ret1
  bx  lr
