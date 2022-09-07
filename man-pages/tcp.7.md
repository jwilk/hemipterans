https://lore.kernel.org/all/20210127175703.hdqwnj36oefoqhzf@jwilk.net/

The description of `tcp_retries2` reads:

> The default value is 15, which corresponds to a duration of approximately
> between 13 to 30 minutes, depending on the retransmission timeout.

I'm not a networking expert, but I think this description is outdated.
See these kernel commits:
* <https://git.kernel.org/linus/6fa12c85031485df>
* <https://git.kernel.org/linus/5d7892298a819743>

