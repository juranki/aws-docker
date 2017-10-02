FROM docker:17.09

RUN apk add --no-cache \
		ca-certificates \
		curl \
		openssl \
		py-pip \
		fabric

RUN pip install awscli

RUN mkdir ~/.aws \
  && touch ~/.aws/credentials \
  && touch ~/.aws/config
