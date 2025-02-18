#!/bin/bash

# Parameters
#SBATCH --comment=DeepAVFusion
#SBATCH --cpus-per-task=8
#SBATCH --error=/home/wiss/zverev/DeepAVFusion/checkpoints/deepavfusion_vitb_vggsound_ep200/finetune_vggsound/submitit_logs/%j_0_log.err
#SBATCH --gpus-per-node=4
#SBATCH --job-name=finetune_vggsound-deepavfusion_vitb_vggsound_ep200
#SBATCH --mem=240GB
#SBATCH --nodelist=node14
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --open-mode=append
#SBATCH --output=/home/wiss/zverev/DeepAVFusion/checkpoints/deepavfusion_vitb_vggsound_ep200/finetune_vggsound/submitit_logs/%j_0_log.out
#SBATCH --partition=NORMAL
#SBATCH --signal=USR2@120
#SBATCH --time=1440
#SBATCH --wckey=submitit

# command
export SUBMITIT_EXECUTOR=slurm
srun --unbuffered --output /home/wiss/zverev/DeepAVFusion/checkpoints/deepavfusion_vitb_vggsound_ep200/finetune_vggsound/submitit_logs/%j_%t_log.out --error /home/wiss/zverev/DeepAVFusion/checkpoints/deepavfusion_vitb_vggsound_ep200/finetune_vggsound/submitit_logs/%j_%t_log.err /home/wiss/zverev/miniconda3/envs/efav/bin/python -u -m submitit.core._submit /home/wiss/zverev/DeepAVFusion/checkpoints/deepavfusion_vitb_vggsound_ep200/finetune_vggsound/submitit_logs
