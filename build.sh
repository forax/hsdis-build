#!/bin/bash

# install lzip
#sudo apt-get install lzip

# get binutils
wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.1.tar.lz

# uncompress, untar
lzip --decompress binutils-2.31.1.tar.lz
tar xvf binutils-2.31.1.tar

export BINUTILS=./binutils-2.31.1

# clone jdk
git clone https://github.com/openjdk/jdk.git

cd jdk/src/utils/hsdis
make all64

ls -l build








