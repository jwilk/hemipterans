```pycon
>>> import html2text
>>> c = html2text.HTML2Text()
>>> c.handle('<i>foo</i>')
'_foo_\n\n'
>>> c.handle('<i>foo</i>')
' _foo_\n\n'
```
