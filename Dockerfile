FROM stackbrew/ubuntu:saucy

RUN apt-get update
RUN apt-get install -y software-properties-common --force-yes
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get -y install nodejs git

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
