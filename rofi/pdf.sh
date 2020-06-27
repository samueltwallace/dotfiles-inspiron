#!/bin/bash


PDFS="$(find $HOME/Documents -name *.pdf)"
PDF="$(echo "$PDFS" | rofi -p Zathura -dmenu -i)"
if [[ -f $PDF ]] 
then
	zathura "$PDF"
fi
