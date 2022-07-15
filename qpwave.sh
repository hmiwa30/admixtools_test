#!/hmiwa/admixtools-test
#$ -cwd
#$ -V
#$ -l medium
#$ -l d_rt=192:00:00
#$ -l s_rt=192:00:00
#$ -l s_vmem=64G
#$ -l mem_req=64G
#$ -S /bin/bash
#$ -o ~/hmiwa/admixtools-test/qpwave.o
#$ -e ~/hmiwa/admixtools-test/qpwave.e
echo "start: `date`"
singularity exec /usr/local/biotools/a/admixtools:7.0.2--h767d0c5_0 qpWave -p ~/hmiwa/admixtools-test/parqpwave.txt;echo "qpWave done: `date`"
echo "finish: `date`"