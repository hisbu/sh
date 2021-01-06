#! /bin/bash

file=test.txt

IFS='|'
for domain ip in test.txt
do 
	echo "domain $domain"
	echo "ip $ip"
done
