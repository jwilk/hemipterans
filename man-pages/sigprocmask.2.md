> ```c
> #include <signal.h>
>
> /* Prototype for the glibc wrapper function */
> int sigprocmask(int how, const sigset_t *restrict set,
>                 sigset_t *restrict oldset);
> ```

So far so good…

> ```c
> #include <signal.h>           /* Definition of SIG_* constants */
> ```

Wait, what? Why `<signal.h>` again?

> ```c
> /* Prototype for the underlying system call */
> int syscall(SYS_rt_sigprocmask, int how, const kernel_sigset_t *set,
>                 kernel_sigset_t *oldset, size_t sigsetsize);
>
> /* Prototype for the legacy system call (deprecated) */
> int syscall(SYS_sigprocmask, int how, const old_kernel_sigset_t *set,
>                 old_kernel_sigset_t *oldset);
` ```

These are not prototypes. They are not even valid C.
They are incredibly distracting.
