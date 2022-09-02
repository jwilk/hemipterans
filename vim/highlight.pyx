#cython: language_level=2

cdef int foo_from_bar():
    pass

# "from" is part of identifier, not keyword

# Reported downstream:
# https://bugs.debian.org/624804
