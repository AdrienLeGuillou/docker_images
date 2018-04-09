FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3

RUN pip --no-cache-dir install \
    jupyterlab \
    seaborn \
    xgboost \
    pandas-profiling \
    catboost

RUN mkdir /work

WORKDIR "/work"

COPY run_jupyter.sh /
