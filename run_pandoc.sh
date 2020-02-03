#!/bin/bash

tmp=.texpadtmp
rm poygon_based_rts_changeDet.docx 
pandoc -o poygon_based_rts_changeDet.docx -s poygon_based_rts_changeDet.tex \
	--bibliography=poygon_based_rts_changeDet.bib

#rm test.docx
#pandoc -o test.docx -s test.tex \
#       --bibliography=04_synchrotron_xray_imaging_4D.bib

exit

pandoc -s  --bibliography \
 02_mapping_usingDL_eboling.bib \
 --csl mdpi.csl \
 -f markdown+smart -t docx \
-o pandoc_output.docx mapping_dl_eboling.tex

