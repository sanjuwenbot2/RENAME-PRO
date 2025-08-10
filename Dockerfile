
FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN apt update && apt upgrade -y && \
    apt install -y git ffmpeg && \
    pip install --no-cache-dir -r requirements.txt && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 5000

CMD ["python3", "-u", "bot.py"]
