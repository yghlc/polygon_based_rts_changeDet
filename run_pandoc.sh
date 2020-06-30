#!/bin/bash

tmp=.texpadtmp
rm polygon_based_rts_changeDet.docx 
pandoc -o polygon_based_rts_changeDet.docx -s polygon_based_rts_changeDet.tex \
	--bibliography=../shared_files/permafrost_rs_ref.bib
	#--bibliography=polygon_based_rts_changeDet.bib

#rm test.docx
#pandoc -o test.docx -s test.tex \
#       --bibliography=04_synchrotron_xray_imaging_4D.bib

exit

pandoc -s  --bibliography \
 02_mapping_usingDL_eboling.bib \
 --csl mdpi.csl \
 -f markdown+smart -t docx \
-o pandoc_output.docx mapping_dl_eboling.tex

