# OS-Base
A simple 16-bit OS written in x86 assembly that boots from a bootloader to the kernel.

## Requirements
[QEMU](https://www.qemu.org/) (for emulation)
[NASM](https://www.nasm.us/) (assembler)

## Quick Start
1. Install QEMU and NASM
2. Run `build_OS.bat`
3. Watch it boot!

## Why 16-bit?
Unlike modern 32/64-bit OSes, this stays in 16-bit real mode which is:
- Simpler to understand
- Great for learning OS development basics
- Direct access to BIOS interrupts

## Credits
This OS base is by @IBM1500

## Warning
This is a learning project. It might not work on real hardware (and that's okay!).
