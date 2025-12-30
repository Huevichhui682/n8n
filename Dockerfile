# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Настройки n8n
ENV N8N_HOST="0.0.0.0"
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Копируем твои workflow JSON в контейнер
COPY workflows/ /home/node/.n8n/workflows/

# Экспонируем порт
EXPOSE 5678

# Запуск n8n
CMD ["n8n"]
