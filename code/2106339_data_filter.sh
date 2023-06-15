#!/bin/bash/
# Shell scripting
file_name=$1
field_name=$2
field_value=$3

# make required file name
output_file=${file_name:0:2}"_""$2""_""$3".csv
# used {} to slice the string to get first two characters

touch $output_file
# touch to make the required file

no=$(cat $1 | wc -l)  # to count the total no of line sin the file

echo "File Name:$1,Field Name:$2,Field value:$3,No of lines:$no">> $output_file
# write to  the required file 

line=$(cat $1 | head -n1)
# header or column names  of file 

echo "Column names: $line" >> $output_file
# put that info in output file

echo $(cat $1 | grep -i "$3") >> $output_file
# put employee records with given field value

