#!/bin/bash
# to influence current shell execute this script with source
# $ source install-venv.sh


# yes | jupyter kernelspec remove 
env_nm=feast

conda init --all
conda deactivate
conda create -n $env_nm python=3.7
conda env list
conda activate $env_nm
conda install -n $env_nm nb_conda_kernels
#jupyter kernelspec install $env_nm

conda install -n $env_nm  pip ipykernel
python -m ipykernel install --user --name $env_nm --display-name "$env_nm env"
jupyter kernelspec list
conda env list
ls /opt/conda/envs/$env_nm

# pip uninstall luigi
pip install feast[gcp] Pygments -U
