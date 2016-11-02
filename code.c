// GroupID-08(15116044_16116053) - Rohith A.S.R.K. and Shashwat Kumar
// Date : 2 November 2016
// code.c - Problem number: 57

/* Problem statement - Take a number N as input from the user and store in memory. Determine the number of bits which are set in
the 32-bit variable N, storing the result in the B variable. Print the saved result in B from memory.  */

#include <stdio.h>
#include <stdint.h>

void main(){
	uint32_t n;						// n is the input integer
	printf("Enter a number: ");
	scanf("%u",&n);						// taking the input

	unsigned int count = 0;					// count stores the number of bits set.

	while(n){						// computing the number of bits set.
		count += n&1;
		n >>= 1;
	}
	printf("The number of bits set are: %u \n",count);	// printing out the number of bits set.
}
