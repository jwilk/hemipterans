int cmp(int x, int y)
{
	return (x == (y = 0 ? 1 : y)); /* no -Wparentheses warning */
}
