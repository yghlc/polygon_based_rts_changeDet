#!/bin/bash

# extract the citation only cited in this paper from the big bib file 

project=polygon_based_rts_changeDet

#cp /Users/huanglingcao/codes/Texpad/shared_files/permafrost_rs_ref.bib .

# to get the aux file
pdflatex ${project}.tex


# replace \bibdata{} to the absulute path incase it cannot find it
bibpath=/Users/huanglingcao/codes/Texpad/shared_files/permafrost_rs_ref.bib
sed -i .bak -e s%\bibdata{permafrost_rs_ref.bib}%\bibdata{${bibpath}}%g ${project}.aux

# remove other label could cause errors
cat ${project}.aux | grep \citation  > test.aux
cat ${project}.aux | grep \bibdata >> test.aux

# extract the sub-bibfile
bibtool -x test.aux > ${project}.bib

# rm files
rm *.aux ${project}.aux.bak ${project}.log ${project}.out ${project}.spl






