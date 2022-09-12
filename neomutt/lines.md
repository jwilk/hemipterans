```console
$ printf 'From foo@example.org  Sat Oct 30 00:00:00 2021\n\nhello\nworld\n' > mbox
$ neomutt -f mbox
[exit]
$ tail -n4 mbox
Lines: 1

hello
world
```

There would normally be a final blank line, which was missing in this mbox.
But I'd expect NeoMutt to count the lines correctly and the missing empty line.

The final blank line requirement is not documented
in the NotMuch's mbox man page.

Further reading:

http://qmail.org/qmail-manual-html/man5/mbox.html
