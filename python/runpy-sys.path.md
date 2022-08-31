```console
$ echo 'import sys; print(repr(sys.path[0])); sys.exit()' > re.py

$ python3.7 -m unittest
'/home/jwilk/'

$ python3.6 -m unittest
''
```
