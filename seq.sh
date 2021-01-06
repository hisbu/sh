#! /bin/bash
for number in {1..10..2}
do
	if [ $number -eq 5 ]
	then
	#	echo $number
		echo "stop"
		break
	fi
	echo $number
done
echo "done"

