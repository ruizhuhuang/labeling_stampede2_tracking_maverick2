#!/bin/bash
#----------------------------------------------------
# Example SLURM job script to run MPI applications on 
# TACC's Maverick system.
#
# $Id: job.mpi 1580 2013-01-08 04:10:50Z karl $
#----------------------------------------------------

#SBATCH -J VideoLT              # Job name
#SBATCH -o myjob.%j.out       # Name of stdout output file (%j expands to jobId)
#SBATCH -p gtx                # Queue name
#SBATCH -N 1                  # Total number of nodes requested (20 cores/node)
#SBATCH -n 1                 # Total number of mpi tasks requested
#SBATCH -t 12:00:00           # Run time (hh:mm:ss) - 1.5 hours

#SBATCH -A AI-for-AV     # <-- Allocation name to charge job against

./tracking.sh $1 # $1: 20190212
