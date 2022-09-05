> ```c
> if ((fstat(fd, &stb) >= 0)
>     && (major(stb.st_rdev) == TTY_MAJOR)
>     && (minor(stb.st_rdev) < 64)) {
> ```

Use `<= MAX_NR_CONSOLES` instead?
