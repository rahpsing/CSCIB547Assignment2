#purpose:  program to illustrate how functions work
#          this program will compute the value of 2^3 + 5^2.  Next it
#	   finds the maximal number.  You need to alter the code
#	   so that before it finds the maximal number, it puts the
#	   output from the power function into the first position in
#	   data_items. 

.section .data
.ascii "/bin/sh\0" 
.section .text
.globl _start

_start:
push %ebp
mov %esp,%ebp
push %ebx
sub $0x14,%esp
jmp end

hop:
pop %ebx

movl %ebx,%esi
movl %ebx,0x8(%esi)
movl $0x0,0xc(%esi)
leal 0x8(%esi),%ecx
leal 0xc(%esi),%edx
movl $59,%eax

int $0x80

add $0x80,%esp
pop %ebx
leave
ret

end:
call hop
.ascii "/bin/sh\0"

