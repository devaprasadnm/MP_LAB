
data SEGMENT
    msg1 db "Enter the string: $"
    msg2 db "The string is: $"
    value db 20 dup('$')
data ends

code SEGMENT 
      ASSUME cs:code,ds:data
start:  mov ax,data
          mov ds,ax
          lea dx,msg1
          mov ah,09h
          int 21h
          mov si,00h

l1:  mov ah,01h
      int 21h
      mov value[si], al
      inc si
      cmp al,0dh
      jne l1

      lea dx,msg2
      mov ah,09h
      int 21h
      
      mov si,00h

l2:  mov dl,value[si]
      mov ah,02h
      int 21h
      inc si
      cmp al,0dh
      je l3
      jmp l2



l3:  mov ah,4ch
      int 21h

code ends
end start