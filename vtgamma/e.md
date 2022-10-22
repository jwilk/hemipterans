```console
$ gcc -pedantic -xc -c - <<< "char *s = \"$(vtgamma -e 1.0)\";"
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
<stdin>:1:189: warning: non-ISO-standard escape sequence, '\e'
```
