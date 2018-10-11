FROM buildpack-deps:18.04-scm

RUN apt-get update && apt-get install  -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt-get update && apt-get install -y docker-ce \
    && rm -rf /var/lib/apt/lists/*
