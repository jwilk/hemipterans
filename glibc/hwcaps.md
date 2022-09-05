```console
$ sed -e 's/libc.so.6/xyzw.so.6/' /bin/true > nottrue
$ chmod u+x nottrue
$ strace -o '| grep /x86_64/x86_64/' ./nottrue
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/tls/x86_64/x86_64/xyzw.so.6", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
...
```
