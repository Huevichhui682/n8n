FROM n8nio/n8n:latest

# Используем переменную RENDER_EXTERNAL_URL, которую Render предоставляет автоматически
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
# Ключевая строка: используем RENDER_EXTERNAL_URL если есть, иначе дефолт
ENV WEBHOOK_URL=${RENDER_EXTERNAL_URL:-https://n8n.onrender.com}

EXPOSE 5678
CMD ["n8n", "start", "--host=0.0.0.0", "--port=5678"]
