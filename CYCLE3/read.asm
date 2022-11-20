.model small
.data 
.code

mov ah,1h
int 21h
mov dl,al
mov ah,2h
int 21h
end