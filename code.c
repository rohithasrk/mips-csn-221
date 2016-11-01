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
