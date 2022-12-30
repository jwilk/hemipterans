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

---

```console
$ PAGER='nonexistent' git log --oneline -1
error: cannot run nonexistent: No such file or directory
f786779 (HEAD -> master) lintian/check-texinfo: add.

$ PAGER='nonexistent;' git log --oneline -1
nonexistent;: 1: nonexistent: not found
```
