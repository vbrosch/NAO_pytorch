#!/bin/bash

#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --partition=gputitanrtx
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=48:00:00

#SBATCH --job-name=NAO_Job
#SBATCH --output=output.log
#SBATCH --mail-type=ALL
#SBATCH --mail-user=v_bros02@uni-muenster.de

# load modules with available GPU support (this is an example, modify to your needs!)
module load GCCcore
module load Python/3.7.2
module load fosscuda

srun bash train_search_cifar10.sh /scratch/tmp/v_bros02/nao /scratch/tmp/v_bros02/nao_data
