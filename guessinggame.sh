function tolowmuch {
	if [[ $1 -lt $(ls | wc -l) ]] && [[ $1 =~ [0-9]+ ]]
	then
		echo "==Your guess is to low. Try again=="
	elif [[ $1 -gt $(ls | wc -l) ]] && [[ $1 =~ [0-9]+ ]]
	then
		echo "==Your guess is to high Try again=="
	elif [[ $1 -eq $(ls | wc -l) ]] && [[ $1 =~ [0-9]+ ]]
	then
		echo "==CONGRATULATIONS! YOUR GUESS IS RIGHT!=="
		f=1
	else
		echo "==That was wrong :(. Try again=="
	fi
}
f=0
echo "Take a guess. How many files you think are in this directory?  "
while [[ $f -eq 0 ]]
do
	read guess
	tolowmuch $guess
done
