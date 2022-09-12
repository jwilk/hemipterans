When the test file is a broken symlink, the error message is unhelpful:
```console
$ ln -sf foo bar
$ prove bar
Cannot detect source of 'bar'! at /usr/share/perl/5.34/TAP/Parser/IteratorFactory.pm line 256.
	TAP::Parser::IteratorFactory::detect_source(TAP::Parser::IteratorFactory=HASH(0x573b9f14), TAP::Parser::Source=HASH(0x57315bfc)) called at /usr/share/perl/5.34/TAP/Parser/IteratorFactory.pm line 211
	TAP::Parser::IteratorFactory::make_iterator(TAP::Parser::IteratorFactory=HASH(0x573b9f14), TAP::Parser::Source=HASH(0x57315bfc)) called at /usr/share/perl/5.34/TAP/Parser.pm line 472
	TAP::Parser::_initialize(TAP::Parser=HASH(0x57315a30), HASH(0x571a9d3c)) called at /usr/share/perl/5.34/TAP/Object.pm line 55
	TAP::Object::new("TAP::Parser", HASH(0x571a9d3c)) called at /usr/share/perl/5.34/TAP/Object.pm line 130
	TAP::Object::_construct(TAP::Harness=HASH(0x56e71d38), "TAP::Parser", HASH(0x571a9d3c)) called at /usr/share/perl/5.34/TAP/Harness.pm line 856
	TAP::Harness::make_parser(TAP::Harness=HASH(0x56e71d38), TAP::Parser::Scheduler::Job=HASH(0x572f82d4)) called at /usr/share/perl/5.34/TAP/Harness.pm line 655
	TAP::Harness::_aggregate_single(TAP::Harness=HASH(0x56e71d38), TAP::Parser::Aggregator=HASH(0x56e72440), TAP::Parser::Scheduler=HASH(0x572f82ac)) called at /usr/share/perl/5.34/TAP/Harness.pm line 747
	TAP::Harness::aggregate_tests(TAP::Harness=HASH(0x56e71d38), TAP::Parser::Aggregator=HASH(0x56e72440), "bar") called at /usr/share/perl/5.34/TAP/Harness.pm line 558
	TAP::Harness::__ANON__() called at /usr/share/perl/5.34/TAP/Harness.pm line 571
	TAP::Harness::runtests(TAP::Harness=HASH(0x56e71d38), "bar") called at /usr/share/perl/5.34/App/Prove.pm line 548
	App::Prove::_runtests(App::Prove=HASH(0x56e4a200), HASH(0x570fe78c), "bar") called at /usr/share/perl/5.34/App/Prove.pm line 506
	App::Prove::run(App::Prove=HASH(0x56e4a200)) called at /usr/bin/prove line 13

```
