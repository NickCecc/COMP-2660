;ASSIGNMENT 3 SECTION 2
; ./run.sh Assignment3S2 to run program
; Name: Nicholas Cecchin
; Date: November 3, 2023
; ID: 110101683

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here
    p1 BYTE "Enter first int: ", 0
    p2 BYTE "Enter second int: ", 0
    resultM BYTE "Sum: ", 0
    sum DWORD ?


.code
main PROC
 ; Question 1: clears the screen, locates the cursor near the middle of the screen, prompts the user for two integers, adds the integers, and displays their sum.
    call Clrscr

    mov dh, 12
    mov dl, 30
    call Gotoxy


    mov edx, OFFSET p1
    call WriteString
    call ReadInt
    mov ebx, eax


    mov edx, OFFSET p2
    call WriteString
    call ReadInt
    add ebx, eax

    mov edx, OFFSET resultM
    call WriteString
    mov eax, ebx
    call WriteInt

; Question 2: displays the same string in four different colors, using a loop. 
; Call the Set-TextColor procedure from the book’s link library. Any colors may be chosen, but you may find it easiest to change the foreground color.





call DumpRegs

	exit




main ENDP
END main
