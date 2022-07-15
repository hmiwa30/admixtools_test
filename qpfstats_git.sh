#!/hmiwa/admixtools-test
#$ -cwd
#$ -V
#$ -l medium
#$ -l d_rt=192:00:00
#$ -l s_rt=192:00:00
#$ -l s_vmem=64G
#$ -l mem_req=64G
#$ -S /bin/bash
#$ -o ~/hmiwa/log/qpfstats_git.o
#$ -e ~/hmiwa/log/qpfstats_git.e
echo "start: `date`"
git pull origin main
singularity exec /usr/local/biotools/a/admixtools:7.0.2--h767d0c5_0 qpfstats -p ~/hmiwa/admixtools-test/parqpfstat_git.txt;echo "qpfstats done: `date`"
echo "finish: `date`"
