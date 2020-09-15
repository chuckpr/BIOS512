FROM jupyter/r-notebook:9b87b1625445

USER ${NB_USER}

RUN pip install jupyter-offlinenotebook

COPY install.R ./
RUN R -f install.R

COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments

