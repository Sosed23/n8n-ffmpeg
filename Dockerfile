# Указываем, что мы берем за основу официальный образ n8n
FROM docker.n8n.io/n8nio/n8n

# Переключаемся на пользователя root, чтобы установить программы
USER root

# Обновляем списки пакетов и устанавливаем ffmpeg
# Используем менеджер пакетов apk для Alpine Linux
RUN apk update && apk add ffmpeg && rm -rf /var/cache/apk/*

# ВАЖНО: Возвращаемся обратно на пользователя node для безопасности
USER node
