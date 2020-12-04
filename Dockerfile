FROM jupyter/datascience-notebook:python-3.8.6

RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab
CMD jupyter lab --ip=* --port=8888 --no-browser --notebook-dir=/home/jovyan --allow-root