/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 10/12/2021
* Parpadeo de todos los leds
*/
  .include "inter.inc"
.text

  ADDEXC  0x18, irq_handler //Vector Interrupción

  mov r0, #0b11010010 
  msr cpsr_c, r0
  mov sp, #0x8000
  mov r0, #0b11010011 
  msr cpsr_c, r0
  mov sp, #0x8000000
/* Configuramos los GPIOs 9, 10, 11, 17, 22 y 27 como salida */
  ldr r0, =GPBASE
  mov r1, #0b00001000000000000000000000000000
  str r1, [r0, #GPFSEL0]
  ldr r1, =0b00000000001000000000000000001001
  str r1, [r0, #GPFSEL1]
  ldr r1, =0b00000000001000000000000001000000
  str r1, [r0, #GPFSEL2]
/* Contador C1 para dentro de 2 microsegundos */
  ldr r0, =STBASE
  ldr r1, [r0, #STCLO]
  add r1, #2
  str r1, [r0, #STC1]
  /*Interrupciones local y global*/
  ldr r0, =INTBASE
  mov r1, #0b0010
  str r1, [r0, #INTENIRQ1]
  mov r0, #0b01010011 
  msr cpsr_c, r0

bucle:  b bucle //Repetir eternamente

irq_handler:
  push  {r0, r1, r2}
  /*Variables de LED*/
  ldr r0, =ledst 
  ldr r1, [r0]
  eors  r1, #1 
  str r1, [r0] 
  ldr r0, =GPBASE
  ldr r1, =0b00001000010000100000111000000000
  streq r1, [r0, #GPSET0]
  strne r1, [r0, #GPCLR0]
  ldr r0, =STBASE
  mov r1, #0b0010
  str r1, [r0, #STCS]
/*interrupción de medio segundo*/
  ldr r1, [r0, #STCLO]
  ldr r2, =500000 
  add r1, r2
  str r1, [r0, #STC1]
  pop {r0, r1, r2}
  subs  pc, lr, #4
ledst:  .word 0
