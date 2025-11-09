ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}

LABEL maintainer="PyDock Contributors"

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        git \
        curl \
        vim \
        nano \
        wget \
        zip \
        unzip \
        software-properties-common \
        build-essential \
        libpq-dev \
        libssl-dev \
        libffi-dev \
        libjpeg-dev \
        libpng-dev \
        libfreetype6-dev \
        zlib1g-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        libncurses5-dev \
        libncursesw5-dev \
        xz-utils \
        tk-dev \
        libxml2-dev \
        libxmlsec1-dev \
        liblzma-dev \
        ca-certificates \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Install Python tools
RUN pip install --upgrade pip setuptools wheel && \
    pip install \
        ipython \
        ipdb \
        pytest \
        pytest-cov \
        black \
        flake8 \
        mypy \
        pylint \
        autopep8 \
        isort \
        bandit \
        safety

# Set working directory
WORKDIR /var/www

# Default command
CMD ["/bin/bash"]

