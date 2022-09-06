```console
$ printf 'set-outline\n(bookmarks\n ("1 Introduction"\n  "#001" )\n)\n.\n' > sedscript
$ printf 'AT&TFORM\0\0\0 DJVUINFO\0\0\0\n\0\1\0\1\30\0,\1\26\0Sjbz\0\0\0\2\273\177' > dummy.djvu
$ for i in $(seq 1 100); do ln -f dummy.djvu p$i.djvu; done
$ djvm -c bundled.djvu p*.djvu
$ djvmcvt -i bundled.djvu . index.djvu
$ time -p djvused -f sedscript -s index.djvu
real 1.35
user 1.02
sys 0.30
$ for i in $(seq 101 200); do ln -f dummy.djvu p$i.djvu; done
$ djvm -c bundled.djvu p*.djvu
$ djvmcvt -i bundled.djvu . index.djvu
$ time -p djvused -f sedscript -s index.djvu
real 5.45
user 4.37
sys 1.06
```
