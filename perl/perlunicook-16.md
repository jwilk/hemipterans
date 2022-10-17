```console
$ perldoc perlunicook  | grep -A8 ' 16:'
  ℞ 16: Declare STD{IN,OUT,ERR} to be in locale encoding
        # cpan -i Encode::Locale
        use Encode;
        use Encode::Locale;

        # or as a stream for binmode or open
        binmode STDIN,  ":encoding(console_in)"  if -t STDIN;
        binmode STDOUT, ":encoding(console_out)" if -t STDOUT;
        binmode STDERR, ":encoding(console_out)" if -t STDERR;
```

* The comment makes no sense.
* These days you can use `use open IO  => ':locale';`.

