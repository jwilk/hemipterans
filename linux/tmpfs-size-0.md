```console
# mount -t tmpfs -o size=0 none /mnt
# head -c 1M /dev/zero > /mnt/foo
# df -h /mnt
Filesystem      Size  Used Avail Use% Mounted on
none               0     0     0    - /mnt
```
