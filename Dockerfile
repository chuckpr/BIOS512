FROM jupyter/r-notebook:9b87b1625445

USER ${NB_USER}

RUN pip install jupyter-offlinenotebook \
  && jupyter labextension install jupyter-offlinenotebook

USER root
COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments
RUN chown -R ${NB_USER} ${HOME}

COPY install.R ./
RUN R -f install.R
