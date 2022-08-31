> **_FILE_OFFSET_BITS**
>
> Defining this macro with the value 64 automatically converts references to
> 32-bit functions and data types related to file I/O and filesystem operations
> into references to their 64-bit counterparts.

This is inaccurate.

Some of the affected data types, such as `rlim_t`,
are only tangentially related to file I/O.

> This is useful for performing I/O on large files (> 2 Gigabytes) on 32-bit
> systems.

This is correct, but misleading.

You may need `_FILE_OFFSET_BITS=64` even when your program is working only with
small files.
For example, the size of `ino_t` is affected,
so `stat()` on some filesystems `stat()` may fail without LFS enabled.


> 64-bit systems naturally permit file sizes greater than 2 Gigabytes,
> and on those systems this macro has no effect.

This is what glibc documentation states,
but it's not true on some 64-bit architectures:
https://bugs.debian.org/888566#20

The bottom line is: you should always use `_FILE_OFFSET_BITS=64`.
