From `Lib/random.py`:
```python
def shuffle(self, x):
    """Shuffle list x in place, and return None."""

    randbelow = self._randbelow
    for i in reversed(range(1, len(x))):
        # pick an element in x[:i+1] with which to exchange x[i]
        j = randbelow(i + 1)
        x[i], x[j] = x[j], x[i]
```
The `reverse()` call is unneeded.
