include ope.asm
.model small
.stack 64h
.data 
; DEFINIR VARIABLES
    varA db 5h;
    varB dw 4128;
    varC db 30;
    varAUX db ?  
.code
;CODIGO 
main proc
    mov ax,@data;segmento de datos
    mov ds,ax;mover a ds 

    xor si,si
    ciclofor:
        mov bl,varA[si]
        mov varAUX,bl
        print8 varAUX

        inc si
        cmp si,4
        jne ciclofor
    ;TERMINE EL PROGRAMA SI >=3

    mov ax,4c00h;Salir del sistema
    int 21h;interrupcion de DOS
main endp

end main