ARG PYTHON_VERSION=3.11

FROM python:${PYTHON_VERSION}-slim

LABEL maintainer="PyDock Contributors"

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    JUPYTER_ENABLE_LAB=yes

# Install system dependencies
RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends \
        build-essential \
        libpq-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

# Install Jupyter and common data science libraries
RUN pip install --upgrade pip setuptools wheel && \
    pip install \
        jupyter \
        jupyterlab \
        notebook \
        ipykernel \
        pandas \
        numpy \
        matplotlib \
        seaborn \
        scipy \
        scikit-learn \
        ipywidgets

# Create working directory
RUN mkdir -p /home/jovyan/work && \
    chown -R 1000:1000 /home/jovyan

WORKDIR /home/jovyan/work

# Expose port
EXPOSE 8888

# Default command
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]

