```console
$ perl -pi -e 's/foo/bar/' /nonexistent && echo ':-('
Can't open /nonexistent: No such file or directory.
:-(
```
