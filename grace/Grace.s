.data
quine: .string ".data%1$cquine: .string %3$c%4$s%3$c%1$cname: .string %3$cGrace_kid.s%3$c%1$cwrite: .string %3$cw%3$c%1$c%1$c.text%1$c.globl _main%1$c#main function%1$c_main:%1$c%2$cpush %%rbp%1$c%2$cmov %%rsp, %%rbp%1$c%2$clea name(%%rip), %%rdi%1$c%2$clea write(%%rip), %%rsi%1$c%2$ccall _fopen%1$c%2$cmov %%rax, %%rdi%1$c%2$cmov $10, %%rdx%1$c%2$cmov $9, %%rcx%1$c%2$cmov $34, %%r8%1$c%2$clea quine(%%rip), %%r9%1$c%2$clea quine(%%rip), %%rsi%1$c%2$ccall _fprintf%1$c%2$cleave%1$c%2$cret%1$c"
name: .string "Grace_kid.s"
write: .string "w"

.text
.globl _main
#main function
_main:
	push %rbp
	mov %rsp, %rbp
	lea name(%rip), %rdi
	lea write(%rip), %rsi
	call _fopen
	mov %rax, %rdi
	mov $10, %rdx
	mov $9, %rcx
	mov $34, %r8
	lea quine(%rip), %r9
	lea quine(%rip), %rsi
	call _fprintf
	leave
	ret
