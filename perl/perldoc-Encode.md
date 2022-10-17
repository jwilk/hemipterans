```console
$ perldoc Encode | grep 'I<' | sed -e 's/^ *//' >> man-Encode.md
find_mime_encoding("utf8"); # returns undef because "utf8" is not valid I<MIME_ENCODING>
find_mime_encoding("UTF-8"); # same as "utf-8" because I<MIME_ENCODING> is case insensitive
find_mime_encoding("utf-8-strict"); returns undef because "utf-8-strict" is not valid I<MIME_ENCODING>
I<CHECK> = Encode::FB_DEFAULT ( == 0)
I<CHECK> = Encode::FB_CROAK ( == 1)
I<CHECK> = Encode::FB_QUIET
I<CHECK> = Encode::FB_WARN
```
