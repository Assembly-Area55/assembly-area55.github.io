#include <stdio.h>

extern int CalcSum_(int a, int b, int c);

int main(int argc, char argv[])
{
	int a = 17, b = 11, c = 14;
	int sum = CalcSum_(a, b, c);

	printf(" a: %d\n",a);
	printf(" b: %d\n",b);
	printf(" c: %d\n",c);
	printf(" Sum: %d\n",sum);

	return 0;

}
