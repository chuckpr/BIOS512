FROM rocker/binder:3.6.0

ARG NB_USER
ARG NB_UID

USER root
COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments
RUN chown -R ${NB_USER} ${HOME}

USER ${NB_USER}

RUN if [ -f install.R ]; then R --quiet -f install.R; fi
