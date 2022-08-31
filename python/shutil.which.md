```pycon
>>> import os, subprocess, shutil
>>> os.symlink('/usr/bin/hello', 'eggs')
>>> os.environ['PATH'] = ''
>>> subprocess.call('eggs')
Hello, world!
0
>>> os.get_exec_path()
['']
>>> shutil.which('eggs') is None
True
```
