;ASSIGNMENT 2 SECTION 2A
; ./run.sh Assignment2S2A to run program
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
	fibVals DWORD 7 DUP(0)


.code
main PROC
	; code goes here
	; (a) Write a program that uses a loop to calculate the first seven values of the Fibonacci number sequence, 
	; described by the following formula: Fib(1) = 1, Fib(2) = 1, Fib(n) = Fib(n -1) + Fib(n - 2). (10 points)
	mov eax, 1
	mov [fibVals], eax     
    mov [fibVals + 4], eax

	mov esi, 1 ; esi = fib(n-2)
	mov edi, 1 ; edi = fib(n-1)
	mov ecx, 5
    mov ebx, OFFSET fibVals + 8 


calcFibVals:
; Calculate Fib(n) = Fib(n-1) + Fib(n-2)
    add eax, esi            ; eax = edi + esi
    mov [ebx], eax          
    add ebx, 4              
    mov esi, edi
    mov edi, eax
	loop calcFibVals

	mov ecx, 7
	mov ebx, OFFSET fibVals

printVals:
    mov eax, [ebx]
    call WriteDec
	add ebx, 4
	loop printVals

	exit




main ENDP
END main
