```
$ git ls-remote git://ncurses.scripts.mit.edu/ncurses.git
fatal: protocol error: bad line length character: /usr
```
Minimal reproducer:
```
$ { printf '003e'; sleep 1; printf 'git-upload-pack /ncurses.git\0host=ncurses.scripts.mit.edu\0'; } | nc ncurses.scripts.mit.edu 9418
/usr/local/sbin/gitproxy.pl: unexpected message from client at /usr/local/sbin/gitproxy.pl line 44.
```

Tracked down to this git commit:
https://github.com/git/git/commit/7455e05e4e750451
