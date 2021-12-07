/*Instito tecnológico de Tijuana
* Lenguaje de interfaz
* Autor: Rodriguez Moreno Omar Gamaliel
* 06/12/2021
*/
#include <stdio.h>

int seed;
inline short myrand(void){
  seed = seed*1103515245+12345;
  return seed>>16 & 0x7fff;
}
inline void mysrand(int x){
  seed = x;
}
void main(void)
{
  int i;
  mysrand(42); //método random
  for ( i = 0; i <5; i ++ )
  {
    printf ( " %d\n ", myrand());
  }
}

