```console
$ printf 'foo\nbar\n' > /proc/self/comm
$ head -n1 /proc/$$/status
Name:	bar\n
```
