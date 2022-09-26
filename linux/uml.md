UML incorrectly claims that "mem=256M" is for user space:
```console
$ linux mem=256M rootfstype=hostfs init=/bin/sh
⋮
Kernel command line: mem=256M rootfstype=hostfs init=/bin/sh root=98:0 console=tty
Unknown kernel command line parameters "mem=256M", will be passed to user space.
⋮
```

---

UML does not handle the `--` argument correctly:
```console
$ linux mem=256M rootfstype=hostfs init=/bin/echo --
⋮
Kernel command line: mem=256M rootfstype=hostfs init=/bin/echo -- root=98:0 console=tty
⋮
Run /bin/echo as init process
root=98:0 console=tty
⋮
```
