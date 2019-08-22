FROM rocker/binder:latest

ARG NB_USER
ARG NB_UID

USER root
COPY in-class-exercises ${HOME}
RUN chown -R ${NB_USER} ${HOME}

USER ${NB_USER}

RUN if [ -f install.R ]; then R --quiet -f install.R; fi
