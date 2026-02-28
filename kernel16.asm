;kernel;
org 0x8080 ;start from bootloader
bits 16

start:
    mov ah,0x00 ;clear
    mov al,0x03
    int 0x10
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov ah,0x06
    mov al,0
    mov bh,0x17;1 for blue forground 7 for background or the other way around i think
    mov cx,0
    mov dx,0x184F
    int 0x10
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;set text to 8x8 if not
    mov ax,0x1110
    int 0x10
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov si,0 ;set  to output
    mov ah,0x0e
    call charp
    jmp $ ;people just hate hlt for a reason
charp:
    mov al, [msg+si]
    int 0x10
    inc si
    jl charp ;i split my brain in half trying not to use hlt just to know there is a jl/jb ins
    ret
msg db 'OK. Kernel'
