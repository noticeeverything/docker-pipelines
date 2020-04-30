FROM node:12.16.1

RUN apt-get update && apt-get install -y python3 python3-pip make bash python3 g++ openssl util-linux grep bsdmainutils && \
	pip3 install awscli

RUN git clone https://github.com/elasticdog/transcrypt.git /transcrypt
RUN ln -s /transcrypt/transcrypt /usr/local/bin/transcrypt
