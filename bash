#!/bin/bash

while getopts "h:u:p:edi" arg
do
	case $arg in
		 h)
			echo "Host is $OPTARG"
			;;
		 u)
			echo "user is $OPTARG"
			;;
		 p)
			echo "password is $OPTARG"
			;;
		 e)
			echo "initialing project environment"
			;;
		 d)
			echo "initialing database for you"
			;;
		 i)
			echo "increasing the index.html for each dir"
			;;
		 ?)
		echo "unkonw argument"
	exit 1
	;;
	esac
done

# run it by
# bash bt.sh -e -d -h localhost -u root -p 1234
