FROM alpine:3.12

RUN apk add --no-cache \
    bash \
    curl \
    jq \
    git \
    openssh \
    rsync \
    sshpass \
    python3 \
    py3-pip \
    ansible \
    && git clone https://github.com/gekt0rr/devops-deployer.git \
    && chmod +x /devops-deployer/entrypoint.sh 


ENTRYPOINT ["/devops-deployer/entrypoint.sh"]