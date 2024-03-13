#!/bin/bash

if [[ $1 == "-h" ]]; then #Print instruction 
	echo 'INSTRUCTION:'
	echo 'prefix - prefix for name [str]'
	echo 'start - the first ordinal number [int]'
	echo 'finish - the last ordinal number [int]'
	exit 0
fi

if ! [[ $start =~ ^[0-9]+$ ]] || ! [[ $finish =~ ^[0-9]+$ ]]; then
	echo "error: start and finish type must be int"
	exit 1
fi

if [[ $prefix =~ ^[0-9]+$ ]]; then
	echo "error: prefix type must be char"
	exit 1
fi

if [ $start -gt $finish ]; then #Compare the first two parameters
	echo 'ERROR: the second parameter must be larger than the third' #If the second parametr is larger, it is an error
	exit 1
else
	for ((i=$start; i<$finish+1; i++)) #The cycle for numbering 
	do
	var1="_"
	mkdir "$prefix$var1$i" #make dir named prefix_ordernumber
	done
	exit 0
fi
