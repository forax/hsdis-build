#!/bin/bash

# install lzip
#sudo apt-get install lzip

# clone jdk
git clone https://github.com/openjdk/jdk.git

cd jdk/src/utils/hsdis

# get binutils
wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.1.tar.lz

# uncompress, untar
lzip --decompress binutils-2.31.1.tar.lz
tar xf binutils-2.31.1.tar

export BINUTILS=binutils-2.31.1

make all64

# exit
cd ../../../..

# copy hsdis-amd64.*
echo "copy hsdis-amd64.*"
cp jdk/src/utils/hsdis/build/linux-amd64/hsdis-amd64.* .

# remove jdk
rm -fr jdk











