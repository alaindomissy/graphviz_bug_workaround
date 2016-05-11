FROM andrewosh/binder-base

MAINTAINER Alain Domissy <alain.domissy@gmail.com>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y graphviz
RUN apt-get install -y pkg-config

USER main

RUN pip install graphviz
# RUN pip install pygraphviz

# Install requirements for Python 2
# ADD requirements.txt requirements.txt
# RUN pip install -r requirements.txt

# Install requirements for Python 3
# RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt
