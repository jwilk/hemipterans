```console
$ cat test.pm
my $text = "Hello world!\n";
print $text
    or die $!;

$ perlcritic -s BracedFile test.pm
File handle for "print" or "printf" is not braced at line 2, column 1.  See page 217 of PBP.  (Severity: 1)
```
