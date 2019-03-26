# cryptopp has very bad CMakeLists.txt config.
# We have to enforce "cross compiling mode" there by setting CMAKE_SYSTEM_VERSION=NO
# to any "false" value.
hunter_config(cryptopp VERSION ${HUNTER_cryptopp_VERSION} CMAKE_ARGS CMAKE_SYSTEM_VERSION=NO)

hunter_config(
    libjson-rpc-cpp
    VERSION ${HUNTER_libjson-rpc-cpp_VERSION}
    CMAKE_ARGS
    UNIX_DOMAIN_SOCKET_SERVER=NO
    UNIX_DOMAIN_SOCKET_CLIENT=NO
    FILE_DESCRIPTOR_SERVER=NO
    FILE_DESCRIPTOR_CLIENT=NO
    TCP_SOCKET_SERVER=NO
    TCP_SOCKET_CLIENT=NO
    HTTP_SERVER=NO
    HTTP_CLIENT=NO
)

hunter_config(Boost VERSION 1.65.1)

hunter_config(ethash VERSION 0.4.0
    URL https://github.com/chfast/ethash/archive/v0.4.0.tar.gz
    SHA1 fd92ffadff2931877a3b68685dd8c53f0bdec539
)

hunter_config(leveldb VERSION 1.20-post.7035af
    URL https://github.com/google/leveldb/archive/7035af5fc36657447054617759854a726d31dbe0.tar.gz
    SHA1 4130b031b0cd9d53d543720e48865b454a577fc5
)
