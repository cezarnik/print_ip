#include <iostream>
#include <vector>
#include <list>
#include <string>
#include "print_ip.h"
int main(){
	print_ip(static_cast<char>(-1));
	print_ip(static_cast<short>(0));
	print_ip(static_cast<int>(2130706433));
	print_ip(8875824491850138409LL);
	std::vector<short> v;
	short l=15;
	short r=50;
	v.reserve(r-l+1);
	for(short i=l; i<=r; ++i)
		v.push_back(i);
	print_ip(v);		

}
