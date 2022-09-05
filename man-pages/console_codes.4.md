> Normal tracking mode (not implemented in Linux 2.0.24)

This is weird. Why single out this particular version?

I thought maybe it's meant to say “not implemented *as of* Linux 2.0.24”),
but AFAICS it was actually implemented much earlier, in
[1.1.35](https://git.kernel.org/pub/scm/linux/kernel/git/history/history.git/commit/?id=f48455d2222abd02d9a3b4e98096bb7f05045779).

OTOH, in <https://github.com/telmich/gpm/issues/29>, Egmont Koblinger wrote:

> The Linux kernel has supported xterm-style mouse reporting since 2000.

So I'm confused.

Further reading:

* <https://terminalguide.namepad.de/mouse/>
* <https://terminalguide.namepad.de/mode/p9/>
* <https://terminalguide.namepad.de/mode/p1000/>

---

<code>ESC [ ? <em>x</em> ; <em>y</em> ; <em>z</em> c</code> is not documented.

<https://terminalguide.namepad.de/seq/csi_sc__p/>

---

<code>ESC [ ? <em>x</em> ; <em>y</em> m</code> is not documented.

<https://terminalguide.namepad.de/seq/csi_sm__p/>

---

Displaying control characters doesn't work in UTF-8 mode:
<https://terminalguide.namepad.de/mode/3/>

---

Setting G0 charset `ESC ( 0` doesn't seem to work in UTF-8 mode.
Oddly, setting G1 seems to work fine.

Likely because:

```c
if (vc->vc_utf && !vc->vc_disp_ctrl)
        return *c = vc_translate_unicode(vc, *c, rescan);
```
---

Are descriptions of
`ESC [ 10 m`,
`ESC [ 11 m`,
`ESC [ 12 m`
correct?
