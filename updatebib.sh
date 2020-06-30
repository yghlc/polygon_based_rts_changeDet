#!/bin/bash

# extract the citation only cited in this paper from the big bib file 

project=polygon_based_rts_changeDet

# to get the aux file
pdflatex ${project}.tex

# replace \bibdata{} to the absulute path incase it cannot find it
bibpath=/Users/huanglingcao/codes/Texpad/shared_files/thesis_ref
sed -i .bak -e s%\bibdata{thesis_ref}%\bibdata{${bibpath}}%g ${project}.aux 

# extract the sub-bibfile
bibtool -x ${project}.aux > ${project}.bib

# rm files
rm ${project}.aux ${project}.aux.bak ${project}.log






