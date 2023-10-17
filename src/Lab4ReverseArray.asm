; LAB4
; ./run.sh Lab4ReverseArray
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
	array DWORD 1, 5, 6, 8, 0Ah, 1Bh, 1Eh, 22h, 2Ah, 32h


.code
main PROC
	; Code goes here
    mov esi, 0                          ; Point to first element
    mov edi, SIZEOF array - TYPE array  ; Point to last element
    mov ecx, LENGTHOF array / 2         ; counter

L1:     ; Top of loop
    mov eax, array[esi]     ; temp = array[esi]
    xchg eax, array[edi]    ; xchg(temp, array[edi])
    mov array[esi], eax     ; array[esi] = temp

    add esi, TYPE array
    sub edi, TYPE array
    call DumpRegs
    loop L1


	
	exit

main ENDP
END main
