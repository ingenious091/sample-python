#!/bin/bash

# Update package lists
apt-get update

# Install dependencies for building Python
apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

# Download Python 3.8 source code
wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz

# Extract the source code
tar -xf Python-3.8.12.tgz

# Navigate into the extracted directory
cd Python-3.8.12

# Configure the build
./configure --enable-optimizations --with-ensurepip=install

# Build and install Python
make -j $(nproc)
make altinstall

# Navigate back to the original directory
cd ..

# Clean up - remove the downloaded source code
rm -rf Python-3.8.12 Python-3.8.12.tgz

# Verify Python 3.8 installation
python3.8 --version
