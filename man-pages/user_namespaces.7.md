> User namespaces isolate security-related identifiers and attributes, in particular, user IDs and group IDs (see credentials(7)), the root directory, keys (see keyrings(7)),

AFAICT keyrings are _not_ namespaced:

```console
$ n=$(keyctl add user mysecret 'moo!' @u)
333419139

$ keyctl print $n
moo!

$ unshare -U keyctl print $n
moo!

$ unshare -U keyctl revoke $n

$ keyctl print $n
keyctl_read_alloc: Key has been revoked
```
