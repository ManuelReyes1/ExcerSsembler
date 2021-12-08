Ejemplo:
  g++ Ejemplo.s -g -o Ejemplo
Run:
  ./Ejemplo
gdbRun:
  gdb Ejemplo
BareMetal:
  as -o Ejemplo.o Ejemplo.s
  ld -e 0 -Ttext=0x8000 -o Ejemplo.elf Ejemplo.o
  objcopy Ejemplo.elf -O binary kernel.img
Limpiar:
  rm Ejemplo
  rm Ejemplo.s
  rm Ejemplo.elf
  rm Ejemplo.o
  
