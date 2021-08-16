#!/bin/sh
#SBATCH --job-name=IDA_NP
#SBATCH --account=project_2004598
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH -o IDA_NP_p2_output_custom_HPT_NEW_%j.txt
#SBATCH -e IDA_NP_p2_errors_custom_HPT_NEW_%j.txt
#SBATCH --time=02-22:00:00
#SBATCH --mem=350G
#SBATCH --gres=gpu:v100:1,nvme:500


srun python IDA_NP_FeTS_Challenge_NEW.py
