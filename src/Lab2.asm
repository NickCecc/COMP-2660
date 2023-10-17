;LAB 2
; ./run.sh Lab2
; Name: Nicholas Cecchin
; Date: September 26, 2023
; ID: 110101683
; Section: 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
	; data declarations go here
    Rval SDWORD 22
    Xval SDWORD 26
    Yval SDWORD 30
    Zval SDWORD 40

.code
main PROC
	; code goes here
    mov ax,1000h
    inc ax
    dec ax
    mov eax,Xval
    neg eax
    mov ebx,Yval
    sub ebx,Zval
    add eax,ebx
    
    mov Rval,eax
    mov cx,1
    sub cx,1
    mov ax,0FFFFh
    inc ax
    mov ecx,0B9F6h
    sub ecx,9874h
    ; (A)
    call DumpRegs
    ; CF = 0 NO CARRY
    ; SF = 0 RESULT IS POSITIVE
    ; ZF = 0 RESULT IS NOT ZERO
    ; OF = 0 NO OVERFLOW


    mov cx,0
    sub cx,1
    mov ax,7FFFh
    add ax,2
    ; (B)
    call DumpRegs
    ; CF = 0 NO CARRY
    ; SF = 1 RESULT IS NEGATIVE
    ; ZF = 0 RESULT IS NOT ZERO
    ; OF = 1 7FFFh is maximum positive value for signed 16 bit integer, adding 2 causes overflow


    mov al,0FFh
    add al,1
    mov al,+127
    add al,1
    mov ax,7FFEh
    add ax,22h
    ; (C)
    call DumpRegs
    ; CF = 0 NO CARRY
    ; SF = 1 Result is negative
    ; ZF = 0 RESULT IS NOT ZERO
    ; OF = 1 Adding 22h to 7FFEh causes overflow (result is > 7FFFh which is the maximum signed 16 bit integer)
    ; cx = FFFFh and al = 80h


; WAS TOLD BY TA TO OMIT THIS PART DUE TO MOV AL, 720H CAUSING ERROR
    ;mov al,-128
    ;sub al,1
    ;mov al,0DFh
    ;add al,32h
    ;mov al,720h
    ;sub al,0E6h
    ;mov bl,-127
    ;dec bl
    ; (D)
    ;call DumpRegs
    ; CF = 1
    ; SF = 1
    ; ZF = 0 RESULT IS NOT ZERO
    ; OF = 0 NO OVERFLOW



	exit

main ENDP
END main
