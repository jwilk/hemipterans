0 == 0_0

'foo' == r'foo' == fr'foo' == rf'foo'

# ------------------------------------------------------------------------

if True:
    foo
    @decorator  # ← not highlighted as decorator
    def bar():
        pass
