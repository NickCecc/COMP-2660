; LAB4
; ./run.sh Lab4SumArray
; Name: Nicholas Cecchin
; Date: October 17 2023
; ID: 110101683
; Description: Lab 4 Section 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here
	array DWORD 10h, 20h, 30h, 40h, 50h, 60h

    sum DWORD ?


.code
main PROC
	; Code goes here
    mov ecx, LENGTHOF array   
    mov eax, 0
    mov esi, 0                      
   

L1:     ; Top of loop
    add eax, array[esi]
    add esi, TYPE array
    call DumpRegs
    loop L1


	
	exit

main ENDP
END main
