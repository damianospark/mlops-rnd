conda init --all
conda deactivate
conda create -n feast-conda-env python=3.7
conda env list
conda activate feast-conda-env
conda install pip ipykernel
python -m ipykernel install --user --name feast-conda-env --display-name "Py3.7 (Feast)"
jupyter kernelspec list
conda env list
ls /opt/conda/envs/feast-conda-env
