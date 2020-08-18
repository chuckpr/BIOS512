FROM jupyter/datascience-notebook:9b87b1625445

RUN conda install -y -c conda-forge rise=5.6.1

COPY install.R ./
RUN R -f install.R
