`pprint.pprint()` is not a drop-in replacement for `print()`:

``pycon
>>> print('eggs', file=sys.stderr)
eggs
>>> pprint.pprint('eggs', file=sys.stderr)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: pprint() got an unexpected keyword argument 'file'
```
