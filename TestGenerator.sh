#!/bin/zsh

# input file should contain student's name, then a string of numbers separated by spaces
# every pair of numbers contains the learning outcome and the question number to be output
# Could change separator to commas as desired using IFS=","
input='test_info.txt'
while read -r line; do
  test_options=($line)
  student="${test_options[0]} ${test_options[1]}"
  echo "\newcommand{\studentname}{$student}" > info.tex
  for ((i=2; i<${#test_options[@]}; i+=2)); do
        echo "\inputprob{${test_options[$i]}}{${test_options[$i+1]}}" >> info.tex
  done
  
  # The main latex file
  latexmk -pdf 363_LO_Quiz_Generator.tex
  latexmk -c

  mv 363_LO_Quiz_Generator.pdf "Quiz Outputs/Mastery Check $student.pdf"
done < $input




