# Python Services

Pydock provides several Python service containers for different frameworks and use cases.

## Workspace

The workspace container is a full-featured development environment with all the tools you need.

**Features:**
- Multiple Python versions
- Development tools (IPython, pytest, black, flake8, etc.)
- System utilities (git, vim, curl, etc.)

**Usage:**
```bash
docker-compose exec workspace bash
```

## Base Python

A minimal Python container for running Python applications.

**Usage:**
```bash
docker-compose up -d python
docker-compose exec python python your_script.py
```

## Django

Pre-configured Django container with all dependencies.

**Features:**
- Latest Django version
- PostgreSQL support
- Development server ready

**Usage:**
```bash
# Start Django and PostgreSQL
docker-compose up -d django postgres

# Create a new project
docker-compose exec django django-admin startproject myproject .

# Run migrations
docker-compose exec django python manage.py migrate

# Create superuser
docker-compose exec django python manage.py createsuperuser
```

**Access:** `http://localhost:8000`

## Flask

Pre-configured Flask container.

**Features:**
- Latest Flask version
- Development mode enabled
- Hot reload support

**Usage:**
```bash
# Start Flask
docker-compose up -d flask

# Your Flask app should be in app.py or main.py
```

**Access:** `http://localhost:5000`

## FastAPI

Pre-configured FastAPI container with Uvicorn.

**Features:**
- Latest FastAPI version
- Uvicorn ASGI server
- Auto-reload enabled

**Usage:**
```bash
# Start FastAPI
docker-compose up -d fastapi

# Your FastAPI app should be in main.py
```

**Access:** `http://localhost:8000`

**Example main.py:**
```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}
```

