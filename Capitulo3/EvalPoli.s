.data
var1:.asciz" %d\ n"
.text
.global main

main:push{r4,lr}

movr0, #1
movr1, #2
movr2, #3
movr3, #4

movr4, #5
push{r4}

blpoly3

addsp, #4

movr1, r0
ldrr0, =var1
blprintf

movr0, #1
movr1, #-1
movr2, #1
movr3, #-1
movr4, #8
push{r4}
blpoly3
addsp, #4
movr1, r0
ldrr0, =var1
blprintf
movr0, #2
movr1, #0
movr2, #0
movr3, #0
movr4, #8
push{r4}
blpoly3
addsp, #4
movr1, r0
ldrr0, =var1
blprintf
pop{r4, lr}
bxlr
.equparam5, 4 *1 
poly3:push{r4}
ldr4, [sp, #param5] 
smlabbr3, r2, r4, r3 
smulbbr2, r4, r4 
smlabbr3, r1, r2, r3 
smulbbr2, r2, r4
smlabbr0, r0, r2, r3 
pop{r4}
bxlr 
