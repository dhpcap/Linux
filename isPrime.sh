#! /bin/bash

isPrime(){
	n=$1
	if [ $n -le 1 ]; then
		echo "$n is not a prime no"
	else
		for (( i=2; i<(n/2)+1; i++ )); do
			if [ $[n%i] -eq 0 ]; then
				echo "$n is not prime no"
				exit 1
			fi
		done
		echo "$n is prime no"
	fi
}

isPrime $@
