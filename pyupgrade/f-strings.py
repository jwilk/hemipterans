s = '{foo}{bar}'.format(foo=foo, bar=bar)  # this is rewritten as f-strings
s = '{foo}{bar}'.format(  # but this is not
    foo=foo,
    bar=bar,
)
