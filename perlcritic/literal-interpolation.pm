print "\1";   # this triggers ValuesAndExpressions::ProhibitInterpolationOfLiterals
print "\0";   # but not this
print "\01";  # or this
