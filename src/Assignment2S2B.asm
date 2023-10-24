;ASSIGNMENT 2 SECTION 2B
; ./run.sh Assignment2S2B to run program
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
	; B) program that contains data definition of BYTE, SBYTE, WORD, SWORD, DWORD, SDWORD, QWORD

	byteVal BYTE 255
	sByteVal SBYTE -128
	wordVal WORD 12345
	sWordVal SWORD -12345
	dWordVal DWORD 12345678
	sDWordVal SDWORD -12345678
	qWordVal QWORD 12345678901148


.code
main PROC
	; code goes here


	exit




main ENDP
END main
