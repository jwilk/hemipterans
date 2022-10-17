"\xFF";    # this triggers ValuesAndExpressions::ProhibitEscapedCharacters
qr/\xFF/;  # but not this
