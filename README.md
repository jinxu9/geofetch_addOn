# geofetch_addOn
Download all the sra files, start with an single GEO accession 

Notes for myself. 
1.Using the tools from https://github.com/pepkit/geofetch/tree/master/geofetch to get the annotation file including all the accessions for samples in the study. 
e.g: 
 geofetch-master/geofetch/geofetch.py   -i GSE96772 --acc-anno -n  Jason_hemo_scATAC -m meta

2. Process the annotation file into a simple index file with two column [ sample_name GSE#  ]
  less -S Jason_hemo_scATAC_annotation.csv|sed 's/,/\t/g' |less -S  |cut -f 8,9 |less -S >Jason_hemo_scATAC_sample_GSE.index
3. Using sratools to fetch and dump the sra files.
   perl geo_fetch.pl  Jason_hemo_scATAC_sample_GSE.index.HSC  >geo_fetch_batch.sh
   
4. All the commands and scripts are stored @/home/jinxu/Data/HSC/scATAC-Jason-Hemo/GSE96772/Jason_hemo_scATAC
   
