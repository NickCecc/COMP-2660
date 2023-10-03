; LAB3
; ./rundocker.sh Lab3
; Name: Nicholas Cecchin
; Date: October 3 2023
; ID: 110101683
; Description: Lab 3 Section 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here
	val1 BYTE 10h
	val2 WORD 8000h
	val3 DWORD 0FFFFh
	val4 WORD 7FFFh
	val5 DWORD ?
	arrayW WORD 100h,200h,300h
	byte 20 DUP(0)


.code
main PROC
	
	; 1. Increment val2
	inc val2
	; 2. Subtract val3 from eax
	sub eax, val3
	; 3. Subtract val4 from val2
	mov ax, val2
	sub ax, val4
	; 4. val5 = -val1 - (val2 + val4)
	movzx eax, val2
    movzx ebx, val4
    add eax, ebx
    neg eax
    movzx ecx, val1
    neg ecx
    sub ecx, eax
    mov val5, ecx

    ; 5. Increment val2 by 1
    add val2, 1 ; SF = 1 and CF = 0

    ; 6. Val4 - 1
    sub val4, 1  ; Of = 0 and SF = 0

    ; 7. add last element of array to Val4
    ;add val4, [arrayW + 4]

    ; 8. 
    mov val2,7FF0h
    add val2,10h ; a. CF =0 SF =1 ZF =0 OF =1
    add val2,1 ; b. CF =0 SF =1 ZF =0 OF =0
    add val2,2 ; c. CF =0 SF =1 ZF =0 OF =0

    ;9 the purpose of the code 
    





	; code goes here
	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
