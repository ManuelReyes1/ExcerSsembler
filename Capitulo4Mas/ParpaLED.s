/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 10/12/2021
* Led parpadeante con temporizador 4.5 esbn5.s
*/
  .set  GPBASE, 0x20200000
  .set  GPFSEL0,  0x00
  .set  GPSET0, 0x1c
  .set  GPCLR0, 0x28
  .set  STBASE, 0x20003000
  .set  STCLO,  0x04
.text
  ldr r0, =GPBASE

  mov r1, #0b00001000000000000000000000000000
  str r1, [r0, #GPFSEL0] // Configuramos el GPIO 9
  mov r1, #0b00000000000000000000001000000000
  ldr r2, =STBASE
bucle:  bl  espera //Salta a espera
  str r1, [r0, #GPSET0]
  bl  espera //Salta a espera
  str r1, [r0, #GPCLR0]
  b bucle
/* espera medio segundo de retraso*/
espera: ldr r3, [r2, #STCLO] //Lee contador en r3
  ldr r4, =500000
  add r4, r3 
ret1: ldr r3, [r2, #STCLO]
  cmp r3, r4 //Leemos CLO hasta alcanzar r4 con la comparación
  bne ret1
  bx  lr
