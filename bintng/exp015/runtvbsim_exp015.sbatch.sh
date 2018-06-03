#!/bin/bash

#SBATCH
#SBATCH --output=_out/%A.out 
#SBATCH --error=_out/%A.err

# Author: Adam Li (ali39@jhu.edu).
# Created on 2018-02-12. 
#---------------------------------------------------------------------
# SLURM job script to run TVB Simulations
# Parameter List
# - meta data dir 			the directory containing all the structural
#							data needed to run TVB sims
# - output data dir 		the output directory to save the results of
# 							the simulation
#---------------------------------------------------------------------
. /soft/miniconda3/activate
source activate tvbforwardsim

# Debug output to make sure we are in the correct file
echo "Runninng sbatch tvb forward sim file..."
echo ${SBATCH_JOB_NAME}
echo ${SLURM_SUBMIT_DIR}
echo "Patient is: ${patient}"
echo "Metadatadir is: ${metadatadir}"
echo "Outputdatadir is: ${outputdatadir}"
echo "Distance to move is: ${dist}"
echo "Should we shuffle weights?: ${shuffleweights}"

python ./exp015/runtvbsim_exp015.py ${patient} --metadatadir ${metadatadir} --outputdatadir ${outputdatadir} --movedist ${dist} --shuffleweights ${shuffleweights}
exit