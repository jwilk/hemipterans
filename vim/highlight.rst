* Highlighted correctly:

  ::
  
     This is code block.
  
  This is not in the code block.

* Highlighted incorrectly:

  .. code::
  
     print('This is Python code block')
  
  This is not in the code block,
  but it is highlited as if it was.

Mitigating factor: removing trailing spaces fixes this.

----

- foo::

    xxx

  bar::

    xxx

  baz
