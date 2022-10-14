```
#0  __realpath_chk (buf=0x5657c188 "-", resolved=0xffffc6dc "", resolvedlen=4096) at ./debug/realpath_chk.c:28
#1  0x56565dca in realpath (__resolved=0xffffc6dc "", __name=0x5657c188 "-") at /usr/include/i386-linux-gnu/bits/stdlib.h:46
```
Why are the `realpath` arguments in the wrong order?
