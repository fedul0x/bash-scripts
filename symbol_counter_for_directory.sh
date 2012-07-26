#!/bin/bash
#Добавить проверку исходных данных

old_value=$(find "$1" -iname "*$2*" -exec cat '{}' \; | wc -m)
while true
do
echo "Symbols init value: "$old_value
new_value=$(find "$1" -iname "*$2*" -exec cat '{}' \; | wc -m)
echo "Symbols init value: "$new_value
let d=$new_value-$old_value
echo "Diff value: "$d
sleep 60
done