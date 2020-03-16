#!/bin/bash


# Install python-3.8.1
cd /tmp
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz
tar -xvzf Python-3.8.1.tgz
cd Python-3.8.1
./configure --prefix=/apps/python/3.8.1
make
make install

# Set up environment module file
mkdir -p /apps/modulefiles/python

cat >/apps/modulefiles/python/3.8.1 <<EOL
#%Module 1.0
#
#  Python module for use with 'environment-modules' package:
#
conflict                python
prepend-path            PATH             /apps/python/3.8.1/bin/
prepend-path            LD_LIBRARY_PATH             /apps/python/3.8.1/lib/
setenv	PYTHON_VER 3.8.1
EOL
