all: README.md

README.md:
	echo "# Welcome to the Guessing Game" > README.md
	echo "Date created: `date`" >> README.md
	echo "## The number of lines of code contained in Guessing game:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
