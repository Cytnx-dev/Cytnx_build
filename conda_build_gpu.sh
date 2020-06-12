conda config --set anaconda_upload no
conda install -c conda_forge cudatoolkit-dev 

if [ $TOXENV = 'py36' ]; then
    OUTPUT_FN=$(conda-build conda_gpu_36/ --output)
    conda-build conda_gpu_36
else
    OUTPUT_FN=$(conda-build conda_gpu_37/ --output)
    conda-build conda_gpu_37
fi

anaconda -t $CONDA_UPLOAD_TOKEN upload -u kaihsinwu $OUTPUT_FN --force
