```console
$ prlimit --core=42foobar -p $$
$ echo $?
0
$ prlimit --core
RESOURCE DESCRIPTION        SOFT HARD UNITS
CORE     max core file size   42   42 bytes
```
