FROM alpine:3.12

# Устанавливаем нужные утилиты
COPY entrypoint.sh /entrypoint.sh

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
    && chmod +x /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]