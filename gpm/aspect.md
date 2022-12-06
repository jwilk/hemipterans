`get_console_size()` uses terminal size to estimate aspect ratio of a single character.
It would be better to just get the font size (assuming square pixels):
```c
void get_font_size(int fd, unsigned int *width, unsigned int *height)
{
    struct console_font_op fop = {
        .op = KD_FONT_OP_GET,
        .width = -1,
        .height = -1,
        .data = NULL,
    };
    if (ioctl(fd, KDFONTOP, &fop) < 0) {
        /* XXX proper error handling is left an exercise to integrators */
        perror("ioctl");
        abort();
    }
    *width = fop.width;
    *height = fop.height;
}
```
