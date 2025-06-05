set(VCPKG_BUILD_TYPE release)

vcpkg_from_pythonhosted(
    OUT_SOURCE_PATH SOURCE_PATH
    PACKAGE_NAME    pluggy
    VERSION         ${VERSION}
    SHA512          8b88eb778ab955910bcde2b3a6c4925d0a239f932aa9b1d8a351aa21b8a922bd842f735e397ef15ed9bd8e51085a88723660e1e691888a9879e7144add32bff2
)

vcpkg_python_build_and_install_wheel(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

vcpkg_python_test_import(MODULE "pluggy")

set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)
