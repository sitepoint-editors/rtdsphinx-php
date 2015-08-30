#!/bin/bash

FILE="conf.py"

echo "------------------------"
echo ""
echo "Configure script running"
echo ""

if [ $# -lt 2 ]
  then
    echo "Error:"
    echo ""
    echo "At least two arguments required:"
    echo " - project name"
    echo " - author name"
    echo ""
    echo "example: bin/configure.sh \"My fancy project\" \"Bruno Skvorc\""
    echo ""
    echo "Optionally, provide a third argument to use as the slug (as a name for the LaTeX file and whatnot)"
    echo ""
    exit 1
fi

echo "Setting project name as $1"
sed -i "s@\:project_name@$1@g" $FILE

echo "Setting author as $2"
sed -i "s@\:author_name@$2@g" $FILE

if [ -z "$3" ]
  then
    echo "No slug supplied, using project name and slugifying."
    SLUGIFIED="$(echo -n $1 | sed -e 's/[^[:alnum:]]/-/g' \
    | tr -s '-' | tr A-Z a-z)"
  else
    SLUGIFIED=$3
fi

echo "Setting slug as $SLUGIFIED"
sed -i "s@\:project_slug@$SLUGIFIED@g" $FILE

echo "------------------------"
echo ""
echo "All done. Should be ready to roll now."