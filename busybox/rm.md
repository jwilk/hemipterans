SUSv4 requires that *if an operand resolves to the root directory,
[rm](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/rm.html) shall write a diagnostic message to standard error and do nothing more with such operands*.
But:
```console
# rm -rf /
rm: it is dangerous to operate recursively on '/'
rm: use --no-preserve-root to override this failsafe
# busybox | head -n1
BusyBox v1.35.0 (Debian 1:1.35.0-2) multi-call binary.
# busybox rm -rf /
rm: can't remove '/boot/extlinux/ldlinux.sys': Operation not permitted
rm: can't remove '/dev/mqueue': Device or resource busy
rm: can't remove '/dev/hugepages': Device or resource busy
⋮
```
