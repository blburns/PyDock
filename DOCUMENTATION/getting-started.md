# Getting Started with Pydock

This guide will help you get started with Pydock.

## Prerequisites

- Docker >= 20.10
- Docker Compose >= 2.0

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/pydock.git
cd pydock
```

2. Copy the environment file:
```bash
cp .env.example .env
```

3. Edit `.env` file to configure your environment variables.

## Basic Usage

### Start Services

Start all services:
```bash
docker-compose up -d
```

Start specific services:
```bash
docker-compose up -d python postgres redis
```

### Stop Services

Stop all services:
```bash
docker-compose down
```

Stop and remove volumes:
```bash
docker-compose down -v
```

### View Logs

View logs for all services:
```bash
docker-compose logs -f
```

View logs for a specific service:
```bash
docker-compose logs -f python
```

### Execute Commands

Run a command in a container:
```bash
docker-compose exec python python --version
```

Access workspace shell:
```bash
docker-compose exec workspace bash
```

## Common Workflows

### Django Development

1. Start Django and PostgreSQL:
```bash
docker-compose up -d django postgres
```

2. Create a new Django project:
```bash
docker-compose exec django django-admin startproject myproject .
```

3. Run migrations:
```bash
docker-compose exec django python manage.py migrate
```

4. Access your app at `http://localhost:8000`

### Flask Development

1. Start Flask and PostgreSQL:
```bash
docker-compose up -d flask postgres
```

2. Create your Flask app in the mounted directory

3. Access your app at `http://localhost:5000`

### FastAPI Development

1. Start FastAPI:
```bash
docker-compose up -d fastapi
```

2. Create your FastAPI app in the mounted directory

3. Access your app at `http://localhost:8000`

### Jupyter Notebooks

1. Start Jupyter:
```bash
docker-compose up -d jupyter
```

2. Access Jupyter at `http://localhost:8888`

## Next Steps

- Read about [Python Services](python-services.md)
- Check out [Examples](examples.md)
- Explore [Database Services](database-services.md)

