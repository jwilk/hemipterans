> These are legal only for the superuser or the owner of the current terminal.

That doesn't sound right.

> Disappeared in Linux 1.1.92.

That's been a long ago.
Perhaps it's time to remove them from the man page?

> subcode=2

Instead of hardcoded number, you could use `TIOCL_*` constants from `<linux/tiocl.h>`.
They are available since [v2.5.71](https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git/commit/?id=6cd8b04781e03b2669c764331181a2d3a8511fe5).

> ```c
> struct {
>       char  subcode;
>       short xs, ys, xe, ye;
>       short sel_mode;
>   };
> ```

This should use `unsigned short`, not `short`.
More importantly, the kernel expects `xs` exactly one byte after subcode, so this struct wouldn't work.
You would need something awkward like this:

```c
struct {
    char padding;
    char subcode;
    struct tiocl_selection sel;
} data;
/* ... initialize data ... */
ioctl(fd, TIOCLINUX, &data.subcode);
```

These selection modes are not documented:

```c
#define 	TIOCL_SELPOINTER	3	/* show the pointer */
#define 	TIOCL_SELCLEAR	4	/* clear visibility of selection */
#define 	TIOCL_SELMOUSEREPORT	16	/* report beginning of selection */
#define 	TIOCL_SELBUTTONMASK	15	/* button mask for report */
```

These subcodes are not documented:

```c
#define TIOCL_SETKMSGREDIRECT	11	/* restrict kernel messages to a vt */
#define TIOCL_GETFGCONSOLE	12	/* get foreground vt */
#define TIOCL_SCROLLCONSOLE	13	/* scroll console */
#define TIOCL_BLANKSCREEN	14	/* keep screen blank even if a key is pressed */
#define TIOCL_BLANKEDSCREEN	15	/* return which vt was blanked */
#define TIOCL_GETKMSGREDIRECT	17	/* get the vt the kernel messages are restricted to */
```
