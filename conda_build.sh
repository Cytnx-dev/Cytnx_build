conda config --set anaconda_upload no

OUTPUT_FN=$(conda-build conda_37dev/ --output)
conda-build conda_37dev/
anaconda -t $CONDA_UPLOAD_TOKEN upload -u kaihsinwu -l nightly $OUTPUT_FN --force
