org 0x7c00
bits 16

start:
    mov ah,0x02
    mov al,1
    mov ch,0
    mov cl,2
    mov dh,0
    mov bx,0x8080 ;funny memory address
    int 0x13 ;bios wake up
    mov ah,0x0e
    mov al,"O"
    int 0x10
    mov ah,0x0e
    mov al,"K"
    int 0x10
    mov ah,0x0e
    mov al,"."
    int 0x10
    jmp 0x8080 ;jmp to kernel32.asm. if i didnt fuck anything up
times 510-($-$$) db 0xF1
dw 0xaa55
