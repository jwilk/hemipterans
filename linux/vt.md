Italic color should be configurable via console-codes.

<https://git.kernel.org/linus/fa6ce9ab5fbcb4c276c48861584b70d387e787b3>

---

Writing to
`/sys/module/vt/parameters/italic`
and
`/sys/module/vt/parameters/underline`
doesn't seem to have any effect.

---

There's no 
`/sys/module/vt/parameters/halfbright`.

---

Selecting this with mouse makes the text invisible:
```console
$ printf '\33[1;30;40mfoo\n\33[0m'
```

---

With 512-character font, setting cursor background may mangle the character under it, e.g.:
```console
$ printf '\33[?18;0;1c'
```

<https://terminalguide.namepad.de/seq/csi_sc__p/>

---

Bracketed paste mode is missing.

<https://invisible-island.net/xterm/xterm-paste64.html>
