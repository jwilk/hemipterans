On FreeBSD, `pager.c` uses the `MORE` env var.
But Git::SVN::Log doesn't.

---

```console
$ PAGER='tee /dev/full' git log --oneline -1
a8b6563 (HEAD -> master) scour/animate: add.
tee: /dev/full: No space left on device
$ echo $?
0
```
