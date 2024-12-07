FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba update --quiet --file /tmp/conda-linux-64.lock \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}"