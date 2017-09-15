FROM docker:17.06-dind

RUN apk add --no-cache \
		ca-certificates \
		curl \
		openssl \
		py-pip

RUN pip install awscli

RUN mkdir ~/.aws \
  && touch ~/.aws/credentials \
  && touch ~/.aws/config
