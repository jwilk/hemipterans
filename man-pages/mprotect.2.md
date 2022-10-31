`close()` is not async-signal-safe,
so it should not be used in the signal handler.
