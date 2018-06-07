#ifndef H_PRINT_IP
#define H_PRINT_IP
#include <iostream>
#include <type_traits>
#include <iterator>
#include <algorithm>
#include <string>
#include <vector>
#include <list>
template<typename T>
typename std::enable_if<std::is_integral<T>::value,void>::type print_ip(const T &val ){
	auto low_ptr = reinterpret_cast<const unsigned char *>(&val);
	auto high_ptr = low_ptr+sizeof(val);
	std::reverse_copy(low_ptr+1,high_ptr,std::ostream_iterator<int>(std::cout,"."));
	std::cout<<static_cast<int>(*low_ptr)<<std::endl;
}

void print_ip(const std::string &s){
	std::cout<<s<<std::endl;
}
template<typename T>
typename std::enable_if<std::is_same<std::vector<typename T:: value_type>,T>::value || std::is_same<std::list<typename T :: value_type>,T>::value,void> 
print_ip(T container){
	for(const auto& it: container)
		print_ip (it);
}


#endif
