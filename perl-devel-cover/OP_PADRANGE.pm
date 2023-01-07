if (my ($x, $y) = 0) {
} else {
}

__END__

$ perl -MDevel::Cover=-silent,1 OP_PADRANGE.pm
unexpected OP_PADRANGE at /usr/share/perl/5.36/B/Deparse.pm line 1671.
