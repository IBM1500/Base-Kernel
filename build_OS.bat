@echo off
C:\Users\IBM1500\AppData\Local\bin\NASM\nasm.exe -f bin boot.asm -o boot.bin
C:\Users\IBM1500\AppData\Local\bin\NASM\nasm.exe -f bin kernel32.asm -o kernel32.bin
copy /b boot.bin+kernel32.bin disk.img
"C:\Program Files\qemu\qemu-system-x86_64.exe" -drive format=raw,file=disk.img
pause
