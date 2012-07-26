#!/bin/bash
#Добавить проверку исходных данных
output_file=~/tmp/symbol_counter_for_directory_output
old_value=$(find "$1" -iname "*$2*" -exec cat '{}' \; | wc -w)
while true
do
echo "Symbols init value: "$old_value > $output_file
new_value=$(find "$1" -iname "*$2*" -exec cat '{}' \; | wc -w)
echo "Symbols init value: "$new_value >> $output_file
let d=$new_value-$old_value
echo "Diff value: "$d >> $output_file
sleep 60
done