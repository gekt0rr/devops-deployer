FROM alpine:3.11

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
    && chmod +x /devops-deployer/scripts/*.sh

ENTRYPOINT ["/devops-deployer/scripts/deploy.sh"]