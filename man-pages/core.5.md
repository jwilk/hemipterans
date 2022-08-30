> The maximum size of the resulting core filename is 128 bytes (64 bytes in kernels before 2.6.19). 

I believe this is inaccurate.

There are actually two limits:

* on the pattern length
  (grep for `KERN_CORE_PATTERN` in `kernel/sysctl.c`, then look for `.maxlen`¹)
* on the resulting pathname
  (see the `format_corename()` function in `fs/exec.c`,
  or `fs/coredump.c` in contemporary kernels).

Before v2.6.19 the pattern length limit was 63, and the pathname length limit was 64.

In [v2.6.19](https://github.com/torvalds/linux/commit/d025c9db7f31fc0554ce7fb2dfc78d35a77f3487),
the limit on pattern length was increased to 127…
But the limit on pathname length remained 64?!

In [v2.6.22](https://github.com/torvalds/linux/commit/71ce92f3fa442069670a52fa6230a6064c4517b3),
the limit on pathname length was increased to 128.

In [v2.6.37](https://github.com/torvalds/linux/commit/1b0d300bd0f047e2edaf9d4b6784189e6c67c3d1),
the limit on pathname length was removed.
(But the comment preceding `format_corename()` was not updated…)

¹ Note that `.maxlen` includes terminating null byte, so the actual limit is one less:

```console
# printf '%999d' > /proc/sys/kernel/core_pattern
# tr -d '\n' < /proc/sys/kernel/core_pattern | wc -c
127
```
