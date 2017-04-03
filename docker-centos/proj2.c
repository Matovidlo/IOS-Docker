#include <stdio.h>

int main(int argc, char **argv){
	if ( argc < 7){
		printf("Not enough arguments!\n");
		return 1;
	}
	else{
		printf("Arguments are: ");
		for (int i = 1; i < 6; i++)
			printf("%d.value is =   %s ", i,argv[i]);
		printf("\n");
	}
	//printf("Hello world !\n");
	return 0;
}
