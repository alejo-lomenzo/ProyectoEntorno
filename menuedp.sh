#!/bin/bash

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~MENU~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PS3="Please select the script to run:"
SCRIPTS=("findNames" "blankLinesCounter")

select scr in "${SCRIPTS[@]}" Quit
do
    case $scr in
	"findNames")
	  ./findNames.sh loren.txt
	  ;;
	"blankLinesCounter")
	  ./blankLinesCounter.sh loren.txt
	  ;;
	"Quit")
	  exit 0
	  ;;
    esac
done
