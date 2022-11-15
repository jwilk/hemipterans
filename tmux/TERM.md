`tmux.1` reads:

> The TERM environment variable must be set to ‘screen’ or ‘tmux’ for all programs running inside tmux.
> New windows will automatically have ‘TERM=screen’ added to their environment,
> but care must be taken not to reset this in shell start-up files or by the -e option.

This is out of date.
