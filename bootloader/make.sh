gcc main.c -c -fno-stack-protector -fpic -fshort-wchar -mno-red-zone -I gnu-efi/inc -I gnu-efi/inc/x86_64 -DEFI_FUNCTION_WRAPPER -o output/main.o
ld main.o gnu-efi/gnuefi/crt0-efi-x86_64.o -nostdlib -znocombreloc -T gnu-efi/gnuefi/elf_x86_64_efi.lds -shared -Bsymbolic -L gnu-efi/lib -l:libgnuefi.a -l:libefi.a -o main.so
objcopy -j .text -j .sdata -j .data -j .dynamic -j .dynsym -j .rel -j .rela -j .reloc --target=efi-app-x86_64 main.so main.efi
