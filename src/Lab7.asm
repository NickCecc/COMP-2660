;LAB 7
; ./run.sh Lab7 to run program
; Name: Nicholas Cecchin
; Date: November 7, 2023
; ID: 110101683

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
array SWORD 3, 6, 1, 10, −10, −30, −40, −4 
sentinel SWORD 0


.code

; QUESTION 1
    mov esi, OFFSET array 
    mov ecx, LENGTHOF array

   L1: 
    test WORD PTR [esi], 8000h
    jnz neg_found
    pushfd
    add esi, TYPE array
    popfd
    loopnz L1

    jmp quit

neg_found:
    sub esi, TYPE array

quit:
    exit

; QUESTION 2
; 1
cmp ebx, ecx
jle No1
mov X, 1
No1:

; 2
cmp edx, ecx
jg X2
mov X, 1
jmp done1
X2:
mov X, 2
done1:

; 3
cmp val1, ecx
jle else
cmp ecx, edx
jle else
mov X, 1
jmp done2
else:
mov X, 2
done2:

; 4
cmp ebx, ecx
ja ebxGecx

cmp ebx, val1
ja ebxGval1
mov X, 2
jmp done3


ebxGecx:
ebxGval1:
mov X, 1

done3:

; 5
cmp ebx, ecx
jle notG

cmp ebx, edx
jle notG
mov X, 1
jmp done4

notG:
cmp edx, eax
jle Greater
mov X, 1
jmp done4

Greater:
mov X, 2

done4:




exit
main ENDP
END main
