FROM jupyter/datascience-notebook:python-3.8.6

RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab

RUN pip install jupyterthemes
RUN jupyter labextension install @lckr/jupyterlab_variableinspector
RUN jupyter labextension install @arbennett/base16-solarized-dark
RUN jupyter labextension install @arbennett/base16-gruvbox-dark
RUN jupyter labextension enable @lckr/jupyterlab_variableinspector @arbennett/base16-solarized-dark

#設定ファイル
COPY overrides.json /opt/conda/share/jupyter/lab/settings
CMD jupyter lab --ip=* --port=8888 --no-browser --notebook-dir=/home/jovyan --allow-root