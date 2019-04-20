#include<stdio.h>
extern void shift_right(unsigned char *, unsigned int);
extern void shift_left(unsigned char *, unsigned int);
void main() {
	int i;
	unsigned char arr[] = {2,4,6,8};
	shift_right(arr, 4);
	for(i=0;i<4;i++)
	  printf("%d ", arr[i]);
	printf("\n");
	shift_left(arr, 4);
	for(i=0;i<4;i++)
	  printf("%d ", arr[i]);
	printf("\n");
}
