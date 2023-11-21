;ASSIGNMENT 4 SECTION 2
; ./run.sh Assignment4S2 to run program
; Name: Nicholas Cecchin
; Date: November 18, 2023
; ID: 110101683

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here
    key BYTE 2, 4, 1, 0, 3, 5, 2, 4, 4, 6
    message BYTE "String", 0


.code
main PROC
    mov esi, 0
    mov ecx, messageLength

encrypt:
    test ecx, ecx
    jz encdone

    mov al, [message + esi]
    mov bl, [key + esi mod 10]

    test bl, bl
    jz norot

    cmp bl, 0
    jl rotleft
    jmp rotright

rotleft:
    neg bl
    rol al, bl
    jmp rotated

rotright:
    ror al, bl
    jmp rotated

rotated:
    mov [message + esi], al

norot:
    inc esi
    dec ecx
    jmp encrypt

encdone:


    ret

 



	exit




main ENDP
END main
