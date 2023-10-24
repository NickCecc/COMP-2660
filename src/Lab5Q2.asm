;LAB 5 Q2
; ./run.sh Lab5
; Name: Nicholas Cecchin
; Date: October 24, 2023
; ID: 110101683
; Section: 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here
    source BYTE "HELLO", 0


.code
main PROC
	; code goes here
    mov ecx, LENGTHOF source-1
    mov esi, OFFSET source
    mov eax, 0
L1: mov al, BYTE PTR [esi]
    push eax
    inc esi
    loop L1

    mov ecx, LENGTHOF source - 1
    mov esi, OFFSET source

L2: pop eax
    mov [esi], al
    inc esi
    loop L2

	exit

main ENDP
END main
