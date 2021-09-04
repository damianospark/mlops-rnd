#!/bin/bash
# to influence current shell execute this script with source
# $ source install-venv.sh


# yes | jupyter kernelspec remove 

conda init --all
conda deactivate
conda create -n feast-conda-env python=3.7
conda env list
conda activate feast-conda-env
conda install -n feast-conda-env nb_conda_kernels
#jupyter kernelspec install feast-conda-env

conda install -n feast-conda-env  pip ipykernel
python -m ipykernel install --user --name feast-conda-env --display-name "Feast Env"
jupyter kernelspec list
conda env list
ls /opt/conda/envs/feast-conda-env

# pip uninstall luigi
pip install feast[gcp] Pygments -U
