```console
$ chmod 0 .git/refs/heads/master
$ git log
fatal: your current branch appears to be broken
$ git branch
fatal: Failed to resolve HEAD as a valid ref.
$ git for-each-ref
warning: ignoring broken ref refs/heads/master
```
These error messages are unhelpful.
