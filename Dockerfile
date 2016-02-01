FROM quay.io/nubank/nu-base-python:latest

RUN apt-get install -y software-properties-common
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"
RUN apt-get update
RUN apt-get install -y build-essential

COPY . /root
WORKDIR /root
RUN find -name *.pyc -delete

RUN pip install -e . # cache requirements on image

ENTRYPOINT []
CMD ["/bin/bash"]
