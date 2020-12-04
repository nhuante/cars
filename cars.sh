#! /bin/bash
# cars.sh
# Natalie Huante
# December 4, 2020

echo -n "This is a car inventory."
echo -n "Type 1 to enter a new car."
echo -n "Type 2 to display the list of cars."
echo -n "Type 3 to quit and exit the program."

echo -n "What is your choice?"
read -r CHOICE

while [ "$CHOICE" -lt "3" ]
do
	case "$CHOICE" in
		"1") echo "What is the year of the car?"
		read -r YEAR
		echo "What is the make of the car?"
		read -r MAKE
		echo "What is the model of the car?"
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "GOODBYE!";;
		*) echo "You entered an invalid option. Try again.";;
	esac
	echo -n "Type 1 to enter a new car."
	echo -n "Type 2 to display the list of cars."
	echo -n "Type 3 to quit and exit the program."
	echo -n "What is your choice?"
	read -r CHOICE
done

