From `string/strfry.c`:

```c
for (size_t i = 0; i < len - 1; ++i)
  {
    int32_t j;
    __random_r (&rdata, &j);
    j = j % (len - i) + i;

    char c = string[i];
    string[i] = string[j];
    string[j] = c;
  }
```
