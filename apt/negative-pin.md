```console
# printf 'Package: nyancat\nPin: version *\nPin-Priority: -1\n' > /etc/apt/preferences.d/no-nyancat
# apt-get install nyancat
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package nyancat is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

E: Package 'nyancat' has no installation candidate
```
