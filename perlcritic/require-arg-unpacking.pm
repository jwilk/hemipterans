sub f  # triggers TestingAndDebugging::RequireUseStrict
{
    my ($x) = @_;
    local @_ = qw(foo bar);
    return @_[$x];
}
