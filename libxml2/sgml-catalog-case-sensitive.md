```console
# apt-get install docbook-xml python3-docutils libxml2-utils
# rst2xml < /dev/null | SGML_CATALOG_FILES=/etc/sgml/catalog xmllint --catalogs --nonet --noout --loaddtd - && echo OK
OK
# sed -i -e 's/CATALOG/catalog/' /etc/sgml/docutils-common.cat
# rst2xml < /dev/null | SGML_CATALOG_FILES=/etc/sgml/catalog xmllint --catalogs --nonet --noout --loaddtd -
I/O error : Attempt to load network entity http://docutils.sourceforge.net/docs/ref/docutils.dtd
-:2: warning: failed to load external entity "http://docutils.sourceforge.net/docs/ref/docutils.dtd"
cutils Generic//EN//XML" "http://docutils.sourceforge.net/docs/ref/docutils.dtd"
                                                                               ^
```
But as per <https://www.oasis-open.org/specs/a401.htm>, "recognition of the keywords must be case-insensitive".
