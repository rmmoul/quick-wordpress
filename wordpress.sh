#! /bin/bash

# get latest wordpress files, and decompress, in current directory 

echo "Downloading latest wordpress release (this may take a few minutes)..."
wget http://wordpress.org/latest.tar.gz -q

echo "Uncompressing wordpress..."
tar -zxvf latest.tar.gz > /dev/null

echo "Moving files..."
mv wordpress/* ./ > /dev/null

echo "Cleaning up..."
rm latest.tar.gz > /dev/null
rm -rf wordpress > /dev/null
