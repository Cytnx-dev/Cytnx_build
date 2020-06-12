conda config --set anaconda_upload no

if [ $TOXENV = 'py36' ]; then
    OUTPUT_FN=$(conda-build conda_36/ --output)
    conda-build conda_36
else
    OUTPUT_FN=$(conda-build conda_37/ --output)
    conda-build conda_37
fi

anaconda -t $CONDA_UPLOAD_TOKEN upload -u kaihsinwu -l $OUTPUT_FN --force
