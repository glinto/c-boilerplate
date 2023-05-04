#!/usr/bin/env bash
PREV_DIR=$(pwd)
wget -P ~/cpputest/ https://github.com/cpputest/cpputest/releases/download/latest-passing-build/cpputest-latest.tar.gz
cd ~/cpputest/ 
tar -xvf cpputest-latest.tar.gz
cd cpputest-latest/cpputest_build
autoreconf .. -i
../configure
make
cd ..
autoreconf . -i
./configure
make tdd
export CPPUTEST_HOME=$(pwd)
cd $PREV_DIR