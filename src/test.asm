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
	val1 DWORD 10000h
    val2 DWORD 40000h
    val3 DWORD 20000h
    final DWORD ?


.code
main PROC
	
	mov eax, val1
    add eax, val2
    sub eax, val3
    



	; code goes here
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
