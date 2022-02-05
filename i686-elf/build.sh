export TARGET=i686-elf
export PREFIX="/mnt/e/toolchains/install-${TARGET}"
export PATH="$PREFIX/bin:$PATH"

# compile binutils
# mkdir build-binutils
# cd build-binutils
# ../../src/binutils-2.37/configure --target=${TARGET} --prefix="${PREFIX}" --with-sysroot --disable-nls --disable-werror
# make -j8
# make install

# compile gcc
# The $PREFIX/bin dir _must_ be in the PATH. We did that above.
which -- $TARGET-as || echo $TARGET-as is not in the PATH
 
mkdir build-gcc
cd build-gcc
../../src/gcc-11.2.0/configure --target=${TARGET} --prefix="${PREFIX}" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc -j8
make all-target-libgcc -j8
make install-gcc
make install-target-libgcc
