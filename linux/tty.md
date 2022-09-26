Consider the comment `tty_open_proc_set_tty()` in `drivers/tty/tty_jobctrl.c`:
```c
/*
 * Don't let a process that only has write access to the tty
 * obtain the privileges associated with having a tty as
 * controlling terminal (being able to reopen it with full
 * access through /dev/tty, being able to perform pushback).
 * […]
 */
```
The list of ctty privileges is not exhaustive.
