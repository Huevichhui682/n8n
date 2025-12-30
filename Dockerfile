FROM n8nio/n8n:latest

# Устанавливаем переменные окружения
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Убедимся, что рабочая директория правильная
WORKDIR /usr/local/lib/node_modules/n8n

# Запускаем n8n напрямую через npm
CMD ["npm", "start", "--", "--host=0.0.0.0", "--port=5678"]
