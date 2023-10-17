;ASSIGNMENT 1 SECTION 2 QUESTION 1
; ./run.sh Assignment1Q1 to run program
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
	X DWORD ?
	Y DWORD ?

.code
main PROC
	; code goes here
	; Initialize Y
	mov eax, 5
	mov Y, eax

	; GOAL: X = (Y + 4) * 3
	
	; Load Y in eax
	mov eax, Y 

	; add 4 to eax
	add eax, 4

	; multiply eax by 4
	imul eax, 3

	; store computation in X
	mov X, eax


	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
