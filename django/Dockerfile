ARG PYTHON_VERSION=3.11
ARG DJANGO_VERSION=latest

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="Pydock Contributors"

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    DJANGO_SETTINGS_MODULE=settings

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        build-essential \
        libpq-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Django
RUN pip install --upgrade pip setuptools wheel && \
    pip install django==${DJANGO_VERSION} || pip install django

# Set working directory
WORKDIR /var/www

# Expose port
EXPOSE 8000

# Default command
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

