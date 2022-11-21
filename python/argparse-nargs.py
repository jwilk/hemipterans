import argparse
ap = argparse.ArgumentParser()
ap.add_argument('foo')
ap.add_argument('bar', nargs='*')
ap.parse_args([])
# Fails with:
#   test.py: error: the following arguments are required: foo, bar
# but bar is not actually required.
