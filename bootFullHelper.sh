#!/bin/bash

echo ""
echo "--------------------- disk usage ---------------------"

df -h | grep 'Filesystem\|boot'

echo ""
echo "--------------------- installed kernels ---------------------"

dpkg -l | grep linux-image | sed 's/\s*amd64/ amd64/' | sed 's/for version/forVers/'

echo ""
echo "--------------------- active kernel ---------------------"

uname -r

echo ""
echo "------- what you do: use sudo aptitude purge <names of packages of unused kernels>"
echo ""
