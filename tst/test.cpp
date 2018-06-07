#define BOOST_TEST_MODULE print_ip_test
#include <boost/test/unit_test.hpp>
#include <functional>
#include "print_ip.h"
#include <sstream>
#include <string>

std::string get_output(const std::function<void()>& f){
	std::ostringstream str;
	std::streambuf* backup_buf = std::cout.rdbuf();	
	std::cout.rdbuf(str.rdbuf());
	f();
	std::cout.rdbuf(backup_buf);
	return str.str();
}
# define check(func, result) BOOST_CHECK_EQUAL(get_output([](){func;}),result)
BOOST_AUTO_TEST_CASE(char_test){
	check(print_ip(static_cast<char>(1)),"1\n");
	check(print_ip(static_cast<char>(-1)),"255\n");
	check(print_ip(static_cast<char>(10)),"10\n");
}
BOOST_AUTO_TEST_CASE(int_test){
	check(print_ip(20),"0.0.0.20\n");
	check(print_ip(2130706433),"127.0.0.1\n");
	check(print_ip(123*256+123),"0.0.123.123\n");
}
BOOST_AUTO_TEST_CASE(long_test){
	check(print_ip(8875824491850138409LL),"123.45.67.89.101.112.131.41\n");
	check(print_ip(0LL),"0.0.0.0.0.0.0.0\n");
}
BOOST_AUTO_TEST_CASE(string_test){
	check(print_ip("123.456.789"),"123.456.789\n");
	check(print_ip("0\n"),"0\n\n");
}
BOOST_AUTO_TEST_CASE(vector_test){
	check(print_ip(std::vector<int>(4,1)),
	"0.0.0.1\n"
	"0.0.0.1\n"
	"0.0.0.1\n"
	"0.0.0.1\n");
	check(print_ip(
	std::vector<short> v{1,2,3,4,0}),
	"0.1\n"
	"0.2\n"
	"0.3\n"
	"0.4\n"
	"0.0\n");
}
BOOST_AUTO_TEST_CASE(list_test){
	check(print_ip(
	std::list<int>{256,5,1,2,1}),
	"0.0.1.0\n"
	"0.0.0.5\n"
	"0.0.0.1\n"
	"0.0.0.2\n"
	"0.0.0.1\n");	
}
