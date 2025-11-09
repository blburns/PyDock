ARG PYTHON_VERSION=3.11
ARG FLASK_VERSION=latest

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="PyDock Contributors"

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    FLASK_APP=app.py \
    FLASK_ENV=development

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        build-essential \
        libpq-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Flask
RUN pip install --upgrade pip setuptools wheel && \
    pip install flask==${FLASK_VERSION} || pip install flask

# Set working directory
WORKDIR /var/www

# Expose port
EXPOSE 5000

# Default command
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

