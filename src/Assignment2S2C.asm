;ASSIGNMENT 2 SECTION 2C
; ./run.sh Assignment2S2C to run program
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
	; C) Loop for sum of the following array elements
	array DWORD 10000h, 20000h, 30000h, 40000h
	sum DWORD 0

.code
main PROC
	; code goes here

	mov eax, 0
	mov ecx, 4
	mov ebx, OFFSET array
sumArray:
	add eax, [ebx]
	add ebx, 4
	loop sumArray
	mov sum, eax
call DumpRegs

	exit




main ENDP
END main
