# Указываем, что мы берем за основу официальный образ n8n
FROM docker.n8n.io/n8nio/n8n

# Переключаемся на пользователя root, чтобы установить программы
USER root

# Обновляем списки пакетов и устанавливаем ffmpeg
# -y автоматически отвечает "да" на все вопросы
# --no-install-recommends не ставит лишние пакеты, экономя место
RUN apt-get update && apt-get install -y ffmpeg --no-install-recommends && rm -rf /var/lib/apt/lists/*

# ВАЖНО: Возвращаемся обратно на пользователя node для безопасности
USER node
