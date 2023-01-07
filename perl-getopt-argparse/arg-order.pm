use Getopt::ArgParse;
$ap = Getopt::ArgParse->new_parser();
$ap->add_arg('--first', type => 'Bool');
$ap->add_arg('--second', type => 'Bool');
$ns = $ap->parse_args('--help')

__END__

$ perl arg-order.pm 2>&1 | tail -n2
  --second       ? This is option second
  --first        ? This is option first
