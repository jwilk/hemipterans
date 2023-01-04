`BadRedirDetectMime` doesn't help when there's no Content-Type:
```
HTTP/1.1 302 Found
Server: Ericsson Web Redirect
Location: http://bdi.free.aero2.net.pl:8080
Content-Length: 14
Connection: close

<HTML></HTML>
```
