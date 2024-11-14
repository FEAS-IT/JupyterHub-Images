# Inherit from an upstream image
FROM quay.io/jupyter/scipy-notebook:2024-09-23

# Install package from conda-forge using mamba
COPY environment.yml /tmp/environment.yml
RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml
