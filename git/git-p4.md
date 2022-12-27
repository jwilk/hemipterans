<https://github.com/git/git/commit/0b4396f0688f6c82> added this:
```python
if sys.version_info.major < 3 and sys.version_info.minor < 7:
    sys.stderr.write("git-p4: requires Python 2.7 or later.\n")
    sys.exit(1)
```
"major < Y and minor < Y" is not a sound method of comparing versions.
Besides, the `minor` and `major` attributes were added to the `sys.version` tuple only in Python 2.7.
So if you ran in against Python 2.6, you would get:
```
AttributeError: 'tuple' object has no attribute 'major'
```

The correct way to compare Python version numbers is:
```python
if sys.version_info < (2, 7):
    ...
```

But even that wouldn't work after <https://github.com/git/git/commit/8618d322e00f88b7>,
which introduced syntax that Python 2.6 doesn't understand:
```console
$ python2.6 git-p4.py
  File "git-p4.py", line 1760
    with os.fdopen(handle, "w+") as outFile, open(file, "r") as inFile:
                                           ^
SyntaxError: invalid syntax
```
