ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="Pydock Contributors"

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        build-essential \
        libpq-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip setuptools wheel

# Set working directory
WORKDIR /var/www

# Default command
CMD ["python"]

