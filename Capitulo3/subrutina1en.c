/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
#include <stdio.h>

void main(void)
{
  int i;
  mysrand (42); //método random
  for ( i = 0; i <5; i ++ )
  {
    printf ( " %d\n " , myrand());
  }
}
static int seed;
short myrand(void){
  seed = seed *1103515245 + 12345;
  return seed>>16 & 0x7fff ;
}
void mysrand(int x){
  seed = x;
}
