FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y

WORKDIR /root

COPY docker-entrypoint.sh .

RUN apt install -y perl cpanminus

RUN apt-get install -y build-essential

# RUN curl -L https://cpanmin.us | perl - --sudo App::cpanminus


RUN cpanm -n Test::TCP --force

RUN cpanm -n Plack::MIME

RUN cpanm -n Pinto

RUN mkdir /opt/pinto

WORKDIR /opt/pinto

ENTRYPOINT /root/docker-entrypoint.sh
