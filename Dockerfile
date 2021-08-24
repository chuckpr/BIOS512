FROM jupyter/r-notebook:lab-3.1.6

USER ${NB_USER}

RUN mamba install -y jupyter-offlinenotebook \
  && fix-permissions "${CONDA_DIR}" \
  && fix-permissions "/home/${NB_USER}" \
  && mamba clean --all -y

# COPY install.R ./
# RUN R -f install.R

COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments

