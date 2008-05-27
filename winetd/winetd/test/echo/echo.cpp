//
//	simple echo program
//

#include <stdio.h>

int main(int argc, char* argv[])
{
	char ch;
	int  res;

	for(;;)
	{
		res = scanf("%c", &ch);
		if((res == 0) || (res == EOF)) break;
		printf("%c", ch);
	}

	return 0;
}

