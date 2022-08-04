#!/bin/bash

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~MENU~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PS3="Please select the script to run:"
SCRIPTS=("findNames" "blankLinesCounter")

select scr in "${SCRIPTS[@]}" Exit
do
    case $scr in
	"statsWords.sh")
	  ./statsWords.sh loren.txt
	  ;;
	"statsUsageWords.sh")
	  ./statsUsageWords.sh loren.txt 
	"findNames.sh")
	  ./findNames.sh loren.txt
	  ;;
	"statsSentences.sh")
	  ./statsSentences.sh loren.txt
	  ;;
	"blankLinesCounter")
	  ./blankLinesCounter.sh loren.txt
	  ;;
	"Exit")
	  exit 0
	  ;;
    esac
done
