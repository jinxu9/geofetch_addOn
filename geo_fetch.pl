$i=1;
<>;
while(<>)
{

 chomp;
 my @a=split;

print "#processing ",$i++,"\t", $_,"\n";

# command 1

print "/home/jinxu/Data/HSC/scATAC-Jason-Hemo/geofetch-master/geofetch/geofetch.py -i ","\t";
print $a[1],"\t";
print "--acc-anno -n  ",$a[1], "\t";
print " -m ./\n";
# command 2
print  " \SRR=` grep \'SRR\' \t";
print  $a[1],"/",$a[1],"_SRA.csv\t";
print "|awk -F, '{print \$1}'`\n"; 


# command 3 
#/home/jinxu/Software/sratoolkit.2.8.2-1-ubuntu64/bin/fastq-dump.2.8.2    --split-3 --gzip   $SRR 
print "/home/jinxu/Software/sratoolkit.2.8.2-1-ubuntu64/bin/fastq-dump.2.8.2    --split-3 --gzip\t";
print "\$SRR\n";

print "mv \$SRR\"_1.fastq.gz\" $a[0].\"R1.fastq.gz\" \n "  ;
print "mv \$SRR\"_2.fastq.gz\" $a[0].\"R2.fastq.gz\" \n" ;
#mv $SRR."_2.fastq.gz" $a[0]."R2.fastq.gz" 

print "rm -r ", $a[1],"\n";
}
