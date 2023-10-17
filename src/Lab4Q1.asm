; LAB4Q1
; ./run.sh Lab4Q1
; Name: Nicholas Cecchin
; Date: October 17 2023
; ID: 110101683
; Description: Lab 4 Section 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

PBYTE TYPEDEF PTR BYTE ; pointer to bytes
PWORD TYPEDEF PTR WORD ; pointer to words
PDWORD TYPEDEF PTR DWORD ; pointer to doublewords

.data
	; data declarations go here
    arrayB BYTE 10h, 20h, 30h
    arrayW WORD 1, 2, 3
    arrayD DWORD 4, 5, 6
   
   ; Create some pointer variables.
    ptr1 PBYTE arrayB
    ptr2 PWORD arrayW
    ptr3 PDWORD arrayD


.code
main PROC
 
    ; 1.1 PART A
   ; Use the pointers to access data.
    mov esi, ptr1
    mov al, [esi] ; (a) al = 10h
    mov esi, ptr2
    mov ax, [esi] ; (b) ax = 1
    mov esi, ptr3
    mov eax, [esi] ; (c) eax = 4

    ; 1.2 PART B
   mov eax,0
    mov ecx,10 ; outer loop counter
    L1:
    mov eax,3
    mov ecx,5 ; inner loop counter
    L2:
        add eax,5
            loop L2 ; repeat inner loop
    loop L1 ; repeat outer loop
    ; This is an infinite loop 


	
	exit

main ENDP
END main
