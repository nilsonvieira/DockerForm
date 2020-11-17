FROM alpine:3.12

ENV TERRAFORM_VERSION=0.13.5
VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/usr/bin/terraform"]

RUN apk update && \
    apk add curl bash git unzip wget && \
    cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/tmp/*