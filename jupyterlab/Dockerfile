FROM jupyter/base-notebook

USER root

RUN apt-get update \
  && apt-get install -yq --no-install-recommends graphviz git \
  && apt-get install -y build-essential swig \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
   
RUN conda install --yes --freeze-installed \
    -c conda-forge \
    python-blosc \
    cytoolz \
    dask==1.2.0 \
    nomkl \
    numpy==1.16.2 \
    pandas==0.24.2 \
    ipywidgets \
    && pip install tpot joblib tqdm Cython lightgbm dask-ml[complete] \
    && pip install auto-sklearn \
    && pip install graphviz --no-cache-dir --no-dependencies \
    && conda clean -tipsy \
    && jupyter lab clean \
    && jlpm cache clean \
    && npm cache clean --force \
    && find /opt/conda/ -type f,l -name '*.a' -delete \
    && find /opt/conda/ -type f,l -name '*.pyc' -delete \
    && find /opt/conda/ -type f,l -name '*.js.map' -delete \
    && find /opt/conda/lib/python*/site-packages/bokeh/server/static -type f,l -name '*.js' -not -name '*.min.js' -delete \
    && rm -rf /opt/conda/pkgs

# Create the /opt/app directory, and assert that Jupyter's NB_UID/NB_GID values
# haven't changed. 
RUN mkdir /opt/app \
    && if [ "$NB_UID" != "1000" ] || [ "$NB_GID" != "100" ]; then \
        echo "Jupyter's NB_UID/NB_GID changed, need to update the Dockerfile"; \ 
        exit 1; \
    fi

WORKDIR /home
CMD ["jupyter", "lab","--allow-root"]
