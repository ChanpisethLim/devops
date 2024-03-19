#!/bin/bash

echo "A. Currently logged users:"
who

echo
echo "B. Your shell directory:"
echo "$SHELL"

echo
echo "C. Home Directory:"
echo "$HOME"

echo
echo "D. OS name & version:"
uname -a

echo
echo "E. Current working directory:"
pwd

echo
echo "F. Number of users logged in:"
who | wc -l

echo
echo "G. Show all available shells in your system:"
cat /etc/shells

echo
echo "H. Hard disk information:"
df -h

echo
echo "I. CPU information:"
lscpu

echo
echo "J. Memory information:"
free -h

echo
echo "K. File system information:"
lsblk

echo
echo "L. Currently running process:"
ps aux
