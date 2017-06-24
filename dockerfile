FROM gcr.io/tensorflow/tensorflow
RUN apt-get update && apt-get install -y git-core
RUN pip install tqdm
RUN git clone https://github.com/Steven-Hewitt/QA-with-Tensorflow.git /notebooks/QA
WORKDIR "/notebooks"
CMD ["/run_jupyter.sh"]