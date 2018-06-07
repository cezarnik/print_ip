find_package(Boost COMPONENTS unit_test_framework)
add_executable(print_ip_test test.cpp ${SOURCE_PATH}/print_ip.h)


set_target_properties(print_ip_test PROPERTIES
	CXX_STANDARD 14
	CXX_STANDARD_REQUIRED ON
	COMPILE_DEFINITIONS BOOST_TEST_DYN_LINK
	INCLUDE_DIRECTORIES "${Boost_INCLUDE_DIRS};${SOURCE_PATH}"
	LINK_LIBRARIES ${Boost_LIBRARIES}
)

add_test(print_ip_test print_ip_test)

