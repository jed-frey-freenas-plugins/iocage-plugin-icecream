#!/bin/sh

CFLAGS=-I/usr/local/include
CXXFLAGS=-I/usr/local/include
LDFLAGS=-L/usr/local/lib
CC=`which gcc8`
CXX=`which g++8`

fetch https://github.com/icecc/icecream/archive/master.zip
unzip master.zip

cd icecream-master
./autogen.sh
./configure --prefix=/srv/icecream --without-man CFLAGS=-I/usr/local/include CXXFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib CC=`which gcc8` CXX=`which g++8`
gmake -j`sysctl -n kern.smp.cpus` install

