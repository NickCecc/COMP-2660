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

    str1 BYTE 0ah, "Colored text on the console", 0
    colorArr DWORD Yellow, Blue, Red, Green


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

 mov ecx, LENGTHOF colorArr
 mov esi, 0

displayStr:
    push ecx
    mov eax, [colorArr + esi * TYPE colorArr]
    call SetTextColor

    mov edx, OFFSET str1
    call WriteString

    pop ecx
    add esi, 1
    loop displayStr

    mov eax, Gray
    call SetTextColor


; Question 3: program that corresponds to the following flowchart diagram in Figure 2. Indicate in the comments the function of the program.

; Save esi and ecx on the stack
push esi
push ecx

; Set eax to 0
 mov eax, 0

sumLoop:
    ; Add the pointed-to-value of esi to eax
    add eax, [esi]

    ; Add 4 to esi which will make esi point to the next DWORD
    add esi, 4

    ; Decrement ecx
    dec ecx
    ; loop sumLoop if ecx is > 0
    jg sumLoop

    ; Restore original values of ecx and esi
    pop ecx
    pop esi



	exit




main ENDP
END main
