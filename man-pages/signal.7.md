> | Signal  | Standard | Action | Comment
> |-------- |----------|--------|----------------------------
> | ⋮       | ⋮        | ⋮      | ⋮
> | SIGCHLD | P1990    | Ign    | Child stopped or terminated
> | ⋮       | ⋮        | ⋮      | ⋮

This is confusing.
There *is* a difference between `SIG_IGN` and `SIG_DFL` for SIGCHLD.

------------------------------------------------------------------------

`SIGINFO` is a synonym for `SIGPWR` only on alpha.
The default action on that architecture is Term.
