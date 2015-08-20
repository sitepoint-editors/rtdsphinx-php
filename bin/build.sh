#!/bin/bash

sphinx-intl build

for var in "$@"
do
    sphinx-build -b html -d _build/doctrees -D language="$var" . _build/html/"$var"/
done