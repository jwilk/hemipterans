[`system()`](https://github.com/Perl/perl5/blob/v5.37.5/pp_sys.c#L4367)
is racy with respect to `SIGINT` and `SIGQUIT` handling.
It should set up these signal before fork, not after.
