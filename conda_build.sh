anaconda login -t $CONDA_UPLOAD_TOKEN
conda config --set anaconda_upload yes

conda-build cytnx_37dev/ 
