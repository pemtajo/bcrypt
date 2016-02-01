FROM quay.io/nubank/nu-base-python:latest

COPY . /root
WORKDIR /root
RUN apt-get install -y software-properties-common
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"
RUN apt-get update
RUN apt-get install -y build-essential
ENTRYPOINT ["/bin/bash"]
