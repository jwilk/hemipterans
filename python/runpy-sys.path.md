```console
$ echo 'import sys; print(repr(sys.path[0])); sys.exit()' > re.py

$ python3.7 -c 'import re'
''

$ python3.7 -m unittest
'/home/jwilk/'

$ python3.6 -c 'import re'
''

$ python3.6 -m unittest
''
```

This is not documented; https://docs.python.org/3/using/cmdline.html#cmdoption-m says:

> As with the `-c` option, the current directory will be added to the start of `sys.path`.
