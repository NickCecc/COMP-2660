;LAB 5 Q1
; ./run.sh Lab5Q1
; Name: Nicholas Cecchin
; Date: October 24, 2023
; ID: 110101683
; Section: 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
TAB=9 ;ASCIIcodeforTab
.data
	; data declarations go here

.code
main PROC
	; code goes here
    mov ecx, 50
    L1:
        mov ebx, -300 ; lower bound
        mov eax, 100 ; upper bound
        call BetterRandomRange
        loop L1
        

	exit

main ENDP



BetterRandomRange PROC
    sub eax, ebx
    call RandomRange
    add eax, ebx
    call WriteInt ; write signed decimal 
    mov al,TAB ; horizontal tab
    call WriteChar ; write the tab
    ret
BetterRandomRange ENDP


END main
