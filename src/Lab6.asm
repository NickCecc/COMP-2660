; LAB6
; ./run.sh Lab6
; Name: Nicholas Cecchin
; Date: October 31 2023
; ID: 110101683
; Description: Lab 6 Section 53

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	; data declarations go here



.code
main PROC
	; code goes here

    ; 1. clear the high 8 bits of ax
    AND ax, 00FFh

    ; 2. Set high 8 bits of ax
    OR ax, FF00h

    ; 3. Reverse all bits in eax
    XOR eax, 0FFFFFFFFh

    ; 4. set the Zero flag if the 32-bit value in EAX is even and clear the Zero flag if EAX is odd
    TEST eax, 1       
    JZ even     
    JMP cont      
    even:

    cont:

    ; 5. single instruction that converts an uppercase character in AL to lowercase but does not modify AL if it already contains a lowercase letter
    OR al, 20h

    ; 6. single instruction that converts an ASCII digit in AL to its corresponding binary value. If AL already contains a binary value (00h to 09h), leave it unchanged
    AND al, 0Fh   

    ; 7. instructions that calculate the parity of the 32-bit memory operand

    mov eax, [mo]
    XOR ax, ah
    XOR al, ah
    TEST al, al

    JP ePar


    JMP oPar

    ePar:


    oPar:




    ; 8. Given two bit-mapped sets named SetX and SetY, write a sequence of instructions that generate a bit string in EAX that represents members in SetX that are not members of SetY
    mov eax, [SetX]
    mov ebx, [SetY]
    NOT ebx
    AND eax, ebx

    ; 9. Compare the unsigned integers in EAX and EBX and move the larger of the two to EDX.
    CMP eax, ebx
    mov edx, eax
    JAE GrOrEq
    mov edx, ebx      
    GrOrEq:

    ; 10. Compare the unsigned 16-bit values in the variables V1, V2, and V3 and move the smallest of the three to AX
    ; Assuming V1, V2, and V3 are memory locations containing the 16-bit values

    mov ax, [V1]
    CMP ax, [V2]
    JBE firstSmallest
    mov ax, [V2]

    firstSmallest:
    CMP ax, [V3]
    JBE finalSmallest
    mov ax, [V3]

    finalSmallest:

    ; 11. instructions that jump to label L1 when the unsigned integer in DX is less than or equal to the integer in CX.
    CMP dx, cx
    JBE L1

    L1:

    ; 12. instructions that jump to label L2 when the signed integer in AX is greater than the integer in CX.
    CMP ax, cx
    JG L2

    L2: 

    ; 13. instructions that first clear bits 0 and 1 in AL. Then, if the destination operand is equal to zero, the code should jump to label L3. Otherwise, it should jump to label L4
    AND al, 0FCh
    TEST al, al
    JZ L3
    JMP L4

    L3:


    L4:





   




    






	;call DumpRegs ; displays registers in console

	exit

main ENDP
END main
