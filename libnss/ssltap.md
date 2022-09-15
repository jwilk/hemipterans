The `ssltap` man page says:
> ```
> $ ssltap www.netscape.com
> ```

But this doesn't actually work:
```console
$ ssltap www.netscape.com
You must specify the host AND port you wish to connect to
⋮
```

Then it says:
> enter the URL http://intercept:1924

It should be <https://localhost:1924>.
