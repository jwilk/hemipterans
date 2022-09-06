```console
$ perl -E 'print "From: "; print q(") x 100000; print "\n";' | time -p reformail -f1 > /dev/null
real 4.35
user 4.34
sys 0.00

$ perl -E 'print "From: "; print q(") x 200000; print "\n";' | time -p reformail -f1 > /dev/null
real 18.44
user 18.39
sys 0.01
```
