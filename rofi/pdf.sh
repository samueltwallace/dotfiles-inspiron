#!/usr/bin/env bash

PATH="$HOME/.local/bin:$PATH"
PDFS="$(find $HOME/Documents -name *.pdf)"
PDF="$(echo "$PDFS" | rofi -p Zathura -dmenu -i)"
if [[ -f "$PDF" ]] 
then
	zathura "$PDF"
fi
