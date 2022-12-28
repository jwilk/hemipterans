```console
$ printf '\xff' > /proc/$$/comm

$ python3 -m jc /proc/$$/stat
jc:  Error - "/proc/178820/stat" file could not be opened. For details use the -d or -dd option.
```
