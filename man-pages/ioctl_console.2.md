> These are legal only for the superuser or the owner of the current terminal.

That doesn't sound right.

> Disappeared in Linux 1.1.92.

That's been a long ago.
Perhaps it's time to remove them from the man page?

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

> sel_mode is 0 for character-by-character selection,
> 1 for word-by-word selection,
> or 2 for line-by-line selection.

`TIOCL_*` constants are available for selection modes.

These selection modes are not documented:

```c
#define 	TIOCL_SELPOINTER	3	/* show the pointer */
#define 	TIOCL_SELCLEAR	4	/* clear visibility of selection */
#define 	TIOCL_SELMOUSEREPORT	16	/* report beginning of selection */
#define 	TIOCL_SELBUTTONMASK	15	/* button mask for report */
```
