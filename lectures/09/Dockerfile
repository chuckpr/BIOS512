FROM jupyter/datascience-notebook:6d42503c684f

RUN conda install -y -c conda-forge rise=5.6.1

COPY install.R ./
RUN R -f install.R
