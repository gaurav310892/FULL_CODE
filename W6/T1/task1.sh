#!/bin/bash

VAR1=$1
RED='\033[0;31m'
NC='\033[0m'


printError()
{
	echo -e "\033[31mERROR:\033[0m " $VAR1
}

printError
