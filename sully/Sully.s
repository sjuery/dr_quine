.data
quine: .string ".data%2$cquine: .string %3$c%4$s%3$c%2$cname: .string %3$cSully_%%d.s%3$c%2$cwrite: .string %3$cw%3$c%2$cread: .string %3$cr%3$c%2$ccompile: .string %3$cgcc Sully_%%1$d.s -o Sully_%%1$d%3$c%2$crun: .string %3$c./Sully_%%d%3$c%2$c%2$c.text%2$c.globl _main%2$c_main:%2$c%1$cpush %%rbp%2$c%1$cmov %%rsp, %%rbp%2$c%1$csub $80, %%rsp%2$c%1$clea 16(%%rsp), %%r14%2$c%1$cmovl $%5$d, -4(%%rbp)%2$c%1$ccmpl $0, -4(%%rbp)%2$c%1$cjne .L1%2$c%1$cleave%2$c%1$cret%2$c%2$c.L1:%2$c%1$clea name(%%rip), %%rsi%2$c%1$cmovl -4(%%rbp), %%edx%2$c%1$cmov %%r14, %%rdi%2$c%1$ccall _sprintf%2$c%1$clea read(%%rip), %%rsi%2$c%1$cmov %%r14, %%rdi%2$c%1$ccall _fopen%2$c%1$cmovq %%rax, -16(%%rbp)%2$c%1$ccmpq $0, -16(%%rbp)%2$c%1$cje .L2%2$c%1$csubl $1, -4(%%rbp)%2$c%2$c.L2:%2$c%1$clea name(%%rip), %%rsi%2$c%1$cmovl -4(%%rbp), %%edx%2$c%1$cmov %%r14, %%rdi%2$c%1$ccall _sprintf%2$c%1$clea write(%%rip), %%rsi%2$c%1$cmov %%r14, %%rdi%2$c%1$ccall _fopen%2$c%1$cmov %%rax, %%rdi%2$c%1$cmov %%rax, %%rbx%2$c%1$clea quine(%%rip), %%rsi%2$c%1$cmov $9, %%edx%2$c%1$cmov $10, %%ecx%2$c%1$cmov $34, %%r8%2$c%1$clea quine(%%rip), %%r9%2$c%1$csub $8, %%rsp%2$c%1$cpush -4(%%rbp)%2$c%1$ccall _fprintf%2$c%1$cmov %%rbx, %%rdi%2$c%1$ccall _fclose%2$c%1$cmov -4(%%rbp), %%rdx%2$c%1$clea compile(%%rip), %%rsi%2$c%1$clea 16(%%rsp), %%rdi%2$c%1$ccall _sprintf%2$c%1$clea 16(%%rsp), %%rdi%2$c%1$ccall _system%2$c%1$clea 16(%%rsp), %%rdi%2$c%1$cmov -4(%%rbp), %%edx%2$c%1$clea run(%%rip), %%rsi%2$c%1$ccall _sprintf%2$c%1$clea 16(%%rsp), %%rdi%2$c%1$ccall _system%2$c%1$cleave%2$c%1$cret%2$c"
name: .string "Sully_%d.s"
write: .string "w"
read: .string "r"
compile: .string "gcc Sully_%1$d.s -o Sully_%1$d"
run: .string "./Sully_%d"

.text
.globl _main
_main:
	push %rbp
	mov %rsp, %rbp
	sub $80, %rsp
	lea 16(%rsp), %r14
	movl $5, -4(%rbp)
	cmpl $0, -4(%rbp)
	jne .L1
	leave
	ret

.L1:
	lea name(%rip), %rsi
	movl -4(%rbp), %edx
	mov %r14, %rdi
	call _sprintf
	lea read(%rip), %rsi
	mov %r14, %rdi
	call _fopen
	movq %rax, -16(%rbp)
	cmpq $0, -16(%rbp)
	je .L2
	subl $1, -4(%rbp)

.L2:
	lea name(%rip), %rsi
	movl -4(%rbp), %edx
	mov %r14, %rdi
	call _sprintf
	lea write(%rip), %rsi
	mov %r14, %rdi
	call _fopen
	mov %rax, %rdi
	mov %rax, %rbx
	lea quine(%rip), %rsi
	mov $9, %edx
	mov $10, %ecx
	mov $34, %r8
	lea quine(%rip), %r9
	sub $8, %rsp
	push -4(%rbp)
	call _fprintf
	mov %rbx, %rdi
	call _fclose
	mov -4(%rbp), %rdx
	lea compile(%rip), %rsi
	lea 16(%rsp), %rdi
	call _sprintf
	lea 16(%rsp), %rdi
	call _system
	lea 16(%rsp), %rdi
	mov -4(%rbp), %edx
	lea run(%rip), %rsi
	call _sprintf
	lea 16(%rsp), %rdi
	call _system
	leave
	ret
