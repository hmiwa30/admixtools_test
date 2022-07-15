#!/hmiwa/admixtools-test
#$ -cwd
#$ -V
#$ -l medium
#$ -l d_rt=192:00:00
#$ -l s_rt=192:00:00
#$ -l s_vmem=64G
#$ -l mem_req=64G
#$ -S /bin/bash
#$ -o ~/hmiwa/admixtools-test/qpadm.o
#$ -e ~/hmiwa/admixtools-test/qpadm.e
echo "start: `date`"
singularity exec /usr/local/biotools/a/admixtools:7.0.2--h767d0c5_0 qpAdm -p ~/hmiwa/admixtools-test/parqpadm.txt;echo "qpAdm done: `date`"
echo "finish: `date`"