FROM stackbrew/ubuntu:trusty

RUN apt-get update && apt-get install -y software-properties-common --force-yes && add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update && apt-get -y install nodejs git
RUN npm install -g grunt-cli bower gulp

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
