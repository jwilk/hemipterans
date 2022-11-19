```pycon
>>> subprocess.check_call('false hello world'.split())
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python3.10/subprocess.py", line 369, in check_call
    raise CalledProcessError(retcode, cmd)
subprocess.CalledProcessError: Command '['false', 'hello', 'world']' returned non-zero exit status 1.
```
This `'['`…`']'` looks weird.
