```pycon
>>> u = '\udce2\udcba\udca7'
>>> u.encode('UTF-8', 'surrogateescape').decode('UTF-8')
'\u2ea7'
```
