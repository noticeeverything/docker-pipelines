FROM cypress/base:12.16.1

RUN apt-get update && apt-get install -y make bash g++ openssl util-linux grep bsdmainutils python3 python3-pip && \
	pip3 install awscli

RUN git clone https://github.com/elasticdog/transcrypt.git /transcrypt
RUN ln -s /transcrypt/transcrypt /usr/local/bin/transcrypt
