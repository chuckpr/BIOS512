FROM jupyter/r-notebook:ad3574d3c5c7

COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments

COPY install.R ./
RUN if [ -f install.R ]; then R -f install.R; fi
