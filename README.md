# Latex-Quiz-Generator
A shell script to piece together individual quizzes for different students

*Not Provided:* A folder of tex files for each quiz question.

Files are:
TestGenerator.sh: The shell script to generate the quizzes
363_LO_Quiz_Generator: The main .tex file used to compile the quizzes
test_info.txt: A space separated list of information for each quiz. The first entry is the student name, followed by pairs of entries listing the desired learning outcome and the associated problem number, respectively. 
info.tex: a .tex file created by TestGenerator.sh with all of the information from test_info.txt in a format usable by LaTeX

