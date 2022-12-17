s = '{foo}{bar}'.format(foo=foo, bar=bar)  # this is pyupgraded to f-string
s = '{foo}{bar}'.format(  # but this is not
    foo=foo,
    bar=bar,
)
