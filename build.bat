C:\nasm\nasm.exe -f bin -o bootload.bin bootload.asm
copy /b bootload.bin bootload.flp
md cdiso
copy bootload.flp C:\OS\GalaxdosAtlantic\cdiso
mkisofs -no-emul-boot -boot-load-size 4 -o OS.iso -b bootload.flp cdiso/
pause