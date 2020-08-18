function tolowmuch {
	if [[ $1 -lt $(ls | wc -l) ]]
	then
		echo "Your guess is to low"
	elif [[ $1 -gt $(ls | wc -l) ]]
	then
		echo "Your guess is to high"
	elif [[ $1 -eq $(ls | wc -l) ]]
	then
		echo "CONGRATULATIONS! YOUR GUESS IS RIGHT!"
	else
		echo "That was wrong :("
	fi
}

read guess
tolowmuch $guess
