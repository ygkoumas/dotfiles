#!/bin/bash
# find the directory of the repository
repo_path=$(pwd)"/"
# find all the configuration files of the repository. not readme and .sh files
dot_files=$(ls | sed -e s/"README.md"/""/g -e s#"$(basename $0)"#""#g)
for file in $dot_files;
do
	repo_file=$repo_path$file
	home_file=~/\.$file
	if [ -f $home_file ];
	then
		printf "\033[1;32m File $home_file: Append the following\n \033[0m"
		# get the lines of the repo file that start with "####". Then modify and append them to the home file.
		# it appends only the location of the repo file into the home file on the right format.
		append=$(grep "####" $file | sed -e s/"####"/""/g -e s#CURRENT_FILE_PATH#"$repo_file"#g )
		echo "$append"
		echo "" >> $home_file
		echo "$append" >> $home_file
	else
		printf "\033[0;31m File $home_file: does not exist\n \033[0m"
	fi
done
