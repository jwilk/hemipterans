> **RLIMIT_AS**
>
> Since the value is a long,
> on machines with a 32-bit long either this limit is at most 2 GiB,
> or this resource is unlimited.

At least on i386, `rlim_t` is unsigned.
It could be either 32-bit or 64-bit, depending on `_FILE_OFFSET_BITS`.
Also, you need a 64-bit kernel to set the limit above 4 GiB.

Test code:
```c
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/resource.h>

int main(int argc, char **argv)
{
    rlim_t lim = -1;
    printf("sizeof (rlim_t) = %zu\n", sizeof (rlim_t));
    printf("rlim_t is %ssigned\n", lim < 0 ? "" : "un");
    struct rlimit r = { 3000000000U, 4294967290U };
    setrlimit(RLIMIT_AS, &r);
    getrlimit(RLIMIT_AS, &r);
    printf("%ju\n", (uintmax_t) r.rlim_cur);
    printf("%ju\n", (uintmax_t) r.rlim_max);
    system("grep 'address space' /proc/self/limits");
}
```
