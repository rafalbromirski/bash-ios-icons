#!/bin/bash

# --- functions ------------------------------------------------------

function init
{
  DIR="Icons"

  mkdir $DIR

  # iTunes
  sips -s format png -z 1024 1024 $FILE --out $DIR/iTunesArtwork@2x.png
  sips -s format png -z 512 512   $FILE --out $DIR/iTunesArtwork.png

  # devices
  sips -s format png -z 144 144   $FILE --out $DIR/Icon-72@2x.png
  sips -s format png -z 72 72     $FILE --out $DIR/Icon-72.png

  sips -s format png -z 114 114   $FILE --out $DIR/Icon@2x.png
  sips -s format png -z 57 57     $FILE --out $DIR/Icon.png

  # others
  sips -s format png -z 100 100   $FILE --out $DIR/Icon-Small-50@2x.png
  sips -s format png -z 50 50     $FILE --out $DIR/Icon-Small-50.png

  sips -s format png -z 58 58     $FILE --out $DIR/Icon-Small@2x.png
  sips -s format png -z 29 29     $FILE --out $DIR/Icon-Small.png
}

function file_error
{
  echo "Error: Sorry but the file does not exist!"
}

function hint
{
  echo "This script is used to convert one large iOS App icon (1024x1024) into smaller ones based on iOS Human Interface Guidelines"
  echo ""
  echo " Usages:"
  echo "   bash appicons.sh file.png"
  echo ""
}

# --- main -----------------------------------------------------------

FILE=$1

if [ -e "$FILE" ]; then
  init
elif [ "$FILE" ]; then
  file_error
else
  hint
fi
