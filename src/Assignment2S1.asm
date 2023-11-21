;ASSIGNMENT 2 SECTION 1 QUESTION 1
; ./run.sh Assignment2S1 to run program
; Name: Nicholas Cecchin
; Date: October 22, 2023
; ID: 110101683

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
	; data declarations go here
    myBytes BYTE 10h,20h,30h,40h 
    myWords WORD 8Ah,3Bh,72h,44h,66h 
    myDoubles DWORD 1,2,3,4,5 
    myPointer DWORD myDoubles
.code
main PROC
	; code goes here
    mov esi,OFFSET myBytes

    mov al,[esi]
    mov al,[esi+3]
    mov esi,OFFSET myWords + 2 
     call DumpRegs

    mov ax,[esi]
    mov edi,8
           
    mov edx,[myDoubles + edi]
     call DumpRegs
        
  




	 ; displays registers in console

	exit

main ENDP
END main
