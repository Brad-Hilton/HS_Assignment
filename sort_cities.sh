#!/bin/bash

# This script is executed on the Unix command prompt with the followng command:
# sh sort_cities.sh < input.csv > output.csv
#
# It reads a file called input.csv
# Parses a single line of comma seperated data, 
# sorting the data in descending alphabetical order
# Then produces an output file called output.csv
  
while true

do read line
	if [ "x${line}" == "x" ] 
	  then 
			break
	else
		# First tr removes the comma and inserts carraige return after every value, creating a single column.
		# Sort filters values in descending alpha order.
		# Second tr removes the carraige return and inserts a comma after every value, restoring data to a single row.
		cities=$(echo $line | tr , "\n" | sort -r | tr "\n" ,)
	
		# Clean up end of line and write to file or screen depending on options passed.
			echo "${cities::-1}"  
	fi
		
done