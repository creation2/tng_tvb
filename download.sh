#!/bin/bash -l

# patients=('id002_cj
#   			id004_cv  id006_fb  id008_gc  
# 			id010_js  id012_pc  id014_rb  id016_hh  id018_ol 
# 			 id020_ct  id022_jgi  id024_ml  id026_lz 
# 			id001_ac    id003_cm  id005_et  id007_fb  
# 			id009_il  id011_ml  id013_pg  id015_sf  id017_mm
# 			id019_rg  id021_cf  id023_md   id025_pb
# 			id026_lz id027_kl id028_ag')
patients=('id001_bt  id003_mg  id005_ft  id007_rd   id009_ba
	id011_gr  id014_vc   id016_lm  id018_lo
	id002_sd  id004_bj  id006_mr  id008_dmc
	id010_cmn  id013_lk  id015_gjl  id017_mk')

for patient in $patients; do
	echo $patient
	make download-update patient=$patient
done