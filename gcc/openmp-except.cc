#include <stdexcept>
#include <cstdio>

#include <omp.h>

class TestException {};

int main(int argc, char * const argv[])
try
{
	printf("moo");
	omp_set_num_threads(1);
	#pragma omp parallel for
	for (int i = 0; i < 42; i++)
	try
	{
		if (i == 37)
			throw TestException();
	}
	catch (const std::runtime_error &)
	{
		exit(1);
	}
}
catch (const std::runtime_error &)
{
	exit(1);
}
