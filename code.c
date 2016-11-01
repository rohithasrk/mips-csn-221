// GroupID-08(15116044_16116053) - Rohith A.S.R.K. and Shashwat Kumar
// Date : 1 November 2016

#include <stdio.h>
#include <stdint.h>

void main(){
	uint32_t n;
	scanf("%u",&n);						
	unsigned int count = 0;
	while(n){
		count += n&1;
		n >>= 1;
	}
	printf("%u",count);
}
