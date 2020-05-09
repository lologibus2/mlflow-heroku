FROM continuumio/miniconda3

ENV HOME /
WORKDIR $HOME
COPY . $HOME

RUN pip install --upgrade pip && \
pip install -r requirements.txt && \ 
pwd && ls && ls home &&  \ 
conda update -n base -c defaults conda && \ 
conda env list && \ 
pip freeze list  && \ 
which mlflow 

EXPOSE 5000

CMD mlflow server \
    --host 0.0.0.0 
