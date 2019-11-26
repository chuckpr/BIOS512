FROM jupyter/datascience-notebook:2ce7c06a61a1

COPY Pipfile* ./
RUN pip install pipenv==2018.11.26 \
    && pipenv install --system

RUN conda update -n base conda
RUN conda install r-ggraph libv8
RUN R -e "devtools::install_github('hoesler/rwantshue')"
