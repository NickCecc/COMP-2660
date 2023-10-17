; LAB4Q2
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



.data
	; data declarations go here
    myBytes BYTE 10h,20h,30h,40h
    myWords WORD 3 DUP(?),2000h
    myString BYTE "ABCDE"
 
    ; LABEL directive in the given data that permits myWords to be moved directly to a 32-bit register.
    myWordsLabel LABEL WORD
    ; LABEL directive in the given data that permits my- Bytes to be moved directly to a 16-bit register.
    myBytesLabel LABEL WORD
    


.code
main PROC
    ; Move first 2 bytes of myBytes into dx
    mov dx, WORD PTR [myBytes]
    ; moves the second byte in myWords to the AL register
    mov al, BYTE PTR [myWords + 1]
    ; moves all four bytes in myBytes to the EAX register
    mov eax, DWORD PTR [myBytes]
    
    mov eax, TYPE myBytes ; eax = 1
    mov eax, LENGTHOF myBytes ; eax = 4
    mov eax, SIZEOF myBytes ; eax = 4
    mov eax, TYPE myWords ; eax = 2
    mov eax, LENGTHOF myWords ; eax = 4
    mov eax, SIZEOF myWords ; eax = 8
    mov eax, SIZEOF myString ; eax = 5

	exit

main ENDP
END main
