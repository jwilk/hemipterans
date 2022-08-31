```console
$ cd /tmp
$ ln -s ../../tmp/d d
$ python3.6 -c 'import os; os.path.realpath("d")'
Traceback (most recent call last):
  File "<string>", line 1, in <module>
  File "/usr/lib/python3.6/posixpath.py", line 386, in realpath
    path, ok = _joinrealpath(filename[:0], filename, {})
  File "/usr/lib/python3.6/posixpath.py", line 434, in _joinrealpath
    path, ok = _joinrealpath(path, os.readlink(newpath), seen)
  File "/usr/lib/python3.6/posixpath.py", line 434, in _joinrealpath
    path, ok = _joinrealpath(path, os.readlink(newpath), seen)
  File "/usr/lib/python3.6/posixpath.py", line 434, in _joinrealpath
    path, ok = _joinrealpath(path, os.readlink(newpath), seen)
  [Previous line repeated 992 more times]
  File "/usr/lib/python3.6/posixpath.py", line 401, in _joinrealpath
    if isabs(rest):
  File "/usr/lib/python3.6/posixpath.py", line 65, in isabs
    sep = _get_sep(s)
RecursionError: maximum recursion depth exceeded
```
