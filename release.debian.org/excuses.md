```console
$ curl -si --compressed https://release.debian.org/britney/update_output.txt | grep -i ^content-encoding:
content-encoding: gzip

$ curl -si --compressed https://release.debian.org/britney/excuses.yaml | grep -i ^content-encoding: || echo nope
nope
```
