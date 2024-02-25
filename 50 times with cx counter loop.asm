.model small
.stack 100h
.data    
A DB "Enter A letter : $"
Cap DB 10,13, "Capital leter $"
t DB 10,13, "Thank you $" 

D DB ?

NEWL DB 10, 13, '$' 
.code
main proc
    mov AX,@DATA
    mov DS, AX 
    
   
    mov bx, 0
    mov cx,50

start:    
    mov ah,9
    lea dx,A
    int 21h
    
    mov ah,1
    int 21h
    mov D,al

    
read:
    
    cmp bx,Cx
    Je th
    
    mov ah,9
    lea dx,D
    dec cx
    int 21H
    
    
    jmp read
      
th: 
    mov ah,9
    lea dx,NEWL
    int 21h
    
    mov ah,9
    lea dx,t
    int 21h
    jmp exit
     
exit:    
    
    mov ah,4Ch
    int 21h
    main endp
end