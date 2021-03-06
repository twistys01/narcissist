if(CRYPTOPP_INCLUDE_DIR AND CRYPTOPP_LIBRARIES)
	set(CRYPTOPP_FIND_QUIETLY TRUE)
endif()

find_path(CRYPTOPP_INCLUDE_DIR NAMES cryptopp/cryptlib.h)
find_library(CRYPTOPP_LIBRARIES NAMES cryptopp)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CryptoPP DEFAULT_MSG CRYPTOPP_INCLUDE_DIR CRYPTOPP_LIBRARIES)

mark_as_advanced(CRYPTOPP_INCLUDE_DIR CRYPTOPP_LIBRARIES)

if(CRYPTOPP_INCLUDE_DIR AND CRYPTOPP_LIBRARIES)
	set(CRYPTOPP_FOUND TRUE)
endif()
