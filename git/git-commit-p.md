```console
$ git init -q
$ echo foo > foo
$ echo bar > bar
$ git add .
$ git commit -a -m .
[master (root-commit) b5f0d74] .
 2 files changed, 2 insertions(+)
 create mode 100644 bar
 create mode 100644 foo
$ git rm bar
rm 'bar'
$ echo FOO > foo
$ git commit -p foo -m .
diff --git a/foo b/foo
index 257cc56..b7d6715 100644
--- a/foo
+++ b/foo
@@ -1 +1 @@
-foo
+FOO
(1/1) Stage this hunk [y,n,q,a,d,e,?]? y

[master 753caf1] .
 2 files changed, 1 insertion(+), 2 deletions(-)
 delete mode 100644 bar
$ git diff HEAD~ --stat
 bar | 1 -
 foo | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)
```
