#!/bin/bash
now=$(date +%s)
echo "Current date $now"
echo -e "############################################################################################\nProcessing Files:"
for f in ~/Downloads/*
do
    echo -e "\nProcessing file $f"
    fAge=$(date +%s -r "$f")
    let "difference = $now - $fAge"
    echo -e "Time difference = $difference"
    if [ "$difference" -gt "2600000" ]; then
        echo -e "$f will be deleted"
        rm -f "$f"
    fi
done

echo -e "############################################################################################\nProcessing Directories:"

for f in ~/Downloads/*/
do
    echo -e "\nProcessing directory $f"
    fAge=$(date +%s -r "$f")
    let "difference = $now - $fAge"
    echo -e "Time difference = $difference"
    if [ "$difference" -gt "2600000" ]; then
        echo -e "$f will be deleted"
        rm -fr "$f"
    fi
done