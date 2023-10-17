;ASSIGNMENT 1 SECTION 2 QUESTION 2
; ./run.sh Assignment1Q2 to run program
; Name: Nicholas Cecchin
; Date: September 23, 2023
; ID: 110101683

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
	; data declarations go here

.code
main PROC
	; code goes here
    ;Load 20000h into eax
	mov eax, 20000h
    ; add 30000h to eax
    add eax, 30000h
    ; subtract 10000h from eax
    sub eax, 10000h


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
