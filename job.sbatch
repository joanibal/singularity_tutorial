#!/bin/bash

#SBATCH -J mphys-AS           # Job name
#SBATCH -o mphys-AS.%j        # Name of stdout output file (%j expands to jobId)
#SBATCH -p skx-normal                     # Queue name
#SBATCH -N 1                          # Total number of nodes requested (68 cores/node)
#SBATCH -n 48                          # Total number of mpi tasks requested
#SBATCH -t 48:00:00                   # Run time (hh:mm:ss)
#SBATCH --mail-user=joanibal@umich.edu
#SBATCH --mail-type=all    # Send email at begin and end of job
#SBATCH -A TG-DDM140001



module load tacc-singularity
module unload xalt
cd $WORK/singularity_tutorial
ibrun singularity sif_containers/myMACH.sif $WORK/singularity_tutorial/job_script.sh
