ARG PYTHON_VERSION=3.11
ARG FASTAPI_VERSION=latest

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="PyDock Contributors"

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

# Upgrade pip and install FastAPI and Uvicorn
RUN pip install --upgrade pip setuptools wheel && \
    pip install fastapi==${FASTAPI_VERSION} || pip install fastapi && \
    pip install uvicorn[standard]

# Set working directory
WORKDIR /var/www

# Expose port
EXPOSE 8000

# Default command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

