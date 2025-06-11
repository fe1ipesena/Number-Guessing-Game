#!/bin/bash

RANDOM_NUMBER=$(( $RANDOM % (1000 - 1 + 1) + 1)) 
echo $RANDOM_NUMBER

echo "Enter your username:"
read USERNAME