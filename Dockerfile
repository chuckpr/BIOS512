FROM jupyter/r-notebook:ad3574d3c5c7

USER root
COPY in-class-exercises ${HOME}/in-class-exercises
COPY assignments ${HOME}/assignments
RUN chown -R ${NB_USER} ${HOME}

USER ${NB_USER}

RUN conda update conda
RUN conda install -y r-tidyr==1.0.0 r-ggraph==2.0.0 r-ggrepel==0.8.1

RUN R -e "devtools::install_github('thomasp85/patchwork')"
