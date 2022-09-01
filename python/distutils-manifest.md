Since Python 2.7, this doesn't work in `MANIFEST.in`:
```
recursive-include tests/ *.foo
```
It works with setuptools; or if you remove the trailing slash:
```
recursive-include tests *.foo
```

Likely caused by:
```pycon
>>> distutils.filelist.translate_pattern('*', prefix='foo/').pattern
'^foo\\//.*[^/]*\\Z(?ms)'
```
