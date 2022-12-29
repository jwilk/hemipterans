> Git normally never creates a ref that ends with 40 hex characters
> because it will be ignored when you just specify 40-hex. These refs
> may be created by mistake. For example,
>
>     git switch -c $br $(git rev-parse ...)
>
> where "$br" is somehow empty and a 40-hex ref is created.

This is contradictory.
