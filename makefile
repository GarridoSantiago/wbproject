all: README.md

README.md:
	echo "GUESSING GAME PROJECT" > README.md

	echo -n "Make file was run on " >> README.md
	date | egrep -o '[a-z]+\s[0-9]+\s[a-z]+\s[0-9]+' >> README.md

	echo -n "At  " >> README.md
	date | egrep -o '\S[a-z0-9]:.+' >> README.md

	echo -n "Lines of code in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md

clean:
	rm README.md
