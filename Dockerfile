FROM jenkinsci/blueocean
USER root
RUN apk add --update python
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN export PATH=~/bin:$PATH
