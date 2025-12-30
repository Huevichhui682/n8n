# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Обязательные переменные для работы на Fly.io
ENV N8N_HOST="0.0.0.0"
ENV N8N_PORT=5678
ENV N8N_PROTOCOL="http"
ENV N8N_BASIC_AUTH_ACTIVE="true"
ENV N8N_BASIC_AUTH_USER="admin"        # поменяй на свой логин
ENV N8N_BASIC_AUTH_PASSWORD="yourpassword" # поменяй на свой пароль

# Экспонируем порт 5678
EXPOSE 5678

# Запуск n8n
CMD ["n8n"]
