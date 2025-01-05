#!/bin/bash 

conda env create -n pocketgen -f pocketgen.yaml
conda activate pocketgen

echo "======================= Beginning annex installations ======================="

conda install modeller
conda install openeye::openeye-toolkits

python -m pip install git+https://github.com/Valdes-Tresanco-MS/AutoDockTools_py3
pip install pyg_lib torch-cluster==1.6.1 torch-scatter==2.1.1 torch-sparse==0.6.17 torch-spline-conv==1.2.2 -f https://data.pyg.org/whl/torch-1.13.0+cu117.html
pip install pykeops 
pip install torchdrug==0.2.1
pip install torchmetrics==1.2.0
pip install prody==2.4.1