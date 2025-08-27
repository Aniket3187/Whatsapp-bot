# syntax=docker/dockerfile:1
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

# System deps (add more if you need)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Copy dependency spec first (faster rebuilds)
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Copy source
COPY . /app

# Flask runs on 5000
EXPOSE 5000

# Use Gunicorn for production
# If your Flask app variable isn’t named "app", change "app:app"
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app:app"]
