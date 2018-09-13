.data
quine: .string ".data%1$cquine: .string %3$c%4$s%3$c%1$c%1$c.text%1$c.globl _main%1$c#function to print whole string%1$c_printstring:%1$c%2$cpush %%rbp%1$c%2$cmov %%rsp, %%rbp%1$c%2$cmov $10, %%esi%1$c%2$cmov $9, %%edx%1$c%2$cmov $34, %%ecx%1$c%2$clea quine(%%rip), %%r8%1$c%2$clea quine(%%rip), %%rdi%1$c%2$ccall _printf%1$c%2$cleave%1$c%2$cret%1$c%1$c_main:%1$c%2$cpush %%rbp%1$c%2$cmov %%rsp, %%rbp%1$c%2$ccall _printstring #Calls function to print whole string%1$c%2$cleave%1$c%2$cret%1$c"

.text
.globl _main
#function to print whole string
_printstring:
	push %rbp
	mov %rsp, %rbp
	mov $10, %esi
	mov $9, %edx
	mov $34, %ecx
	lea quine(%rip), %r8
	lea quine(%rip), %rdi
	call _printf
	leave
	ret

_main:
	push %rbp
	mov %rsp, %rbp
	call _printstring #Calls function to print whole string
	leave
	ret
