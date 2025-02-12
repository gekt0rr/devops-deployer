#!/bin/bash
set -e  # Останавливаем выполнение при ошибке

# # Значения по умолчанию
# DEFAULT_REPO="https://github.com/gekt0rr/devops-deployer.git"
# REPO_URL=${REPO_URL:-$DEFAULT_REPO}

# echo "📥 Клонируем репозиторий: $REPO_URL"
# git clone "$REPO_URL" /repo
# cd /repo

# Проверяем, есть ли `deploy.sh`
if [[ -f "deploy.sh" ]]; then
    echo "🚀 Запускаем deploy.sh..."
    chmod +x deploy.sh
    ./deploy.sh
else
    echo "⚠️  deploy.sh не найден. Завершаем работу."
    exit 1
fi