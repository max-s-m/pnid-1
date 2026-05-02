FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Просто виведе повідомлення при запуску контейнера
CMD ["python", "-c", "print('Docker container is running!')"]
