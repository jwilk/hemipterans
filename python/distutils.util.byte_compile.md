`setup.py install` can leave byte-compiled files behind:

```console
$ tar -xzf distutils644-0.3.2.tar.gz

$ cd distutils644-0.3.2/

$ python setup.py install --root=~/tmp
running install
running build
running build_py
creating build
creating build/lib.linux-x86_64-2.7
copying distutils644.py -> build/lib.linux-x86_64-2.7
running install_lib
creating /home/jwilk/tmp/usr
creating /home/jwilk/tmp/usr/lib
creating /home/jwilk/tmp/usr/lib/python2.7
creating /home/jwilk/tmp/usr/lib/python2.7/site-packages
copying build/lib.linux-x86_64-2.7/distutils644.py -> /home/jwilk/tmp/usr/lib/python2.7/site-packages
byte-compiling /home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644.py to distutils644.pyc
running install_egg_info
Writing /home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644-0.3.2.egg-info

$ grep -Eao '0[.][34][0-9.]*' ~/tmp/usr/lib/python*/*-packages/distutils644.py*
/home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644.py:0.3.2
/home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644.pyc:0.3.2

$ cd ..

$ tar -xzf distutils644-0.4.tar.gz

$ cd distutils644-0.4/

$ python setup.py install --root=~/tmp
running install
running build
running build_py
creating build
creating build/lib.linux-x86_64-2.7
copying distutils644.py -> build/lib.linux-x86_64-2.7
running install_lib
copying build/lib.linux-x86_64-2.7/distutils644.py -> /home/jwilk/tmp/usr/lib/python2.7/site-packages
running install_egg_info
Writing /home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644-0.4.egg-info

$ grep -Eao '0[.][34][0-9.]*' ~/tmp/usr/lib/python*/*/distutils644.py*
/home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644.py:0.4
/home/jwilk/tmp/usr/lib/python2.7/site-packages/distutils644.pyc:0.3.2
```

This is because `distutils.util.byte_compile()`
looks at the .pyc's file-system timestamp,
rather than the timestamp embedded in the file.
