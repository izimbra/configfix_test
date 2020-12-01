#!/usr/bin/bash

PROBABILITIES="30 40 50 60 70 80 90" #"10 20 30 40 50 60 70 80 90"

for PROBABILITY in $PROBABILITIES; do
    cd "config.$PROBABILITY"
    ./run.sh
    STATUS=$?
    if [ $STATUS -ne 0 ]; then
        echo "Error: xconfig finished abnormally"
        exit $STATUS
    fi
    cd ..
done