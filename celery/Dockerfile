ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="PyDock Contributors"

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    CELERY_BROKER=redis://redis:6379/0 \
    CELERY_BACKEND=redis://redis:6379/0

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        build-essential \
        libpq-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Install Celery and common dependencies
RUN pip install --upgrade pip setuptools wheel && \
    pip install \
        celery[redis] \
        celery[rabbitmq] \
        redis \
        kombu

# Set working directory
WORKDIR /var/www

# Default command (override in docker-compose)
CMD ["celery", "--help"]

