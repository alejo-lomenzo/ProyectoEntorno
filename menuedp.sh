#!/bin/bash

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~MENU~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PS3="Please select the script to run:"
SCRIPTS=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter")

select scr in "${SCRIPTS[@]}" Exit
do
    case $scr in
	"statsWords")
	  bash statsWords.sh loren.txt
	  ;;
	"statsUsageWords")
	  bash statsUsageWords.sh loren.txt
	  ;; 
	"findNames")
	  bash findNames.sh loren.txt
	  ;;
	"statsSentences")
	  bash statsSentences.sh loren.txt
	  ;;
	"blankLinesCounter")
	  bash blankLinesCounter.sh loren.txt
	  ;;
	"Exit")
	  exit 0
	  ;;
    esac
done
