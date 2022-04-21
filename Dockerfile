FROM ubuntu:18.04

COPY install.sh /root/install.sh

RUN /bin/bash /root/install.sh

ENV HOME /root 
WORKDIR /root                 
CMD /bin/bash

