```console
# dmesg -t | grep -w gpm
traps: gpm[1720] trap divide error ip:565c9f44 sp:ffa528d0 error:0 in gpm[565bd000+f000]

# dpkg-query -W gpm
gpm     1.20.7-10+b1

# file /usr/sbin/gpm
/usr/sbin/gpm: ELF 32-bit LSB pie executable, Intel 80386, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.2, BuildID[sha1]=a025ebcaf9068dc40de4bf035529e53fc9b1c3d1, for GNU/Linux 3.2.0, stripped
```
