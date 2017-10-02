FROM docker:17.09

RUN apk add --no-cache \
		ca-certificates \
		curl \
		openssl \
		py-pip

RUN pip install awscli fabric

RUN mkdir ~/.aws \
  && touch ~/.aws/credentials \
  && touch ~/.aws/config
