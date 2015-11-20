#!/bin/sh -e

which cmake || sudo apt-get install cmake
test -d CppKoans || git clone git@github.com:torbjoernk/CppKoans.git
cd CppKoans

install -d build
(
	cd build
	cmake ..
	make
	./CppKoans
)
