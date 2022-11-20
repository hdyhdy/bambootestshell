FROM ubuntu
RUN mv /etc/apt/sources.list /etc/apt/sources.list.old
COPY sources.list /etc/apt/ 
COPY server /home/ 
COPY config.json /home/
COPY start.sh /home/
COPY run.sh /home/
COPY ips.txt /home/
RUN apt-get update \
    && apt-get install -y iproute2 && apt-get install net-tools -y
#RUN /home/run.sh
WORKDIR /home/
