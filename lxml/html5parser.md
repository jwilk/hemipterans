Elements built by `lxml.html.html5parser` don't have [the usual HTML element methods](https://lxml.de/lxmlhtml.html#html-element-methods):
```pycon
>>> import lxml.html.html5parser
>>> lxml.html.fromstring('<html>foo').text_content()
'foo'
>>> lxml.html.html5parser.fromstring('<html>foo').text_content()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'lxml.etree._Element' object has no attribute 'text_content'
```
