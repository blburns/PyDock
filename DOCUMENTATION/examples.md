# Examples

This document provides example configurations and code snippets for common use cases.

## Django Example

### Project Setup

1. Start services:
```bash
docker-compose up -d django postgres
```

2. Create a new Django project:
```bash
docker-compose exec django django-admin startproject myproject .
```

3. Update `settings.py`:
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'default',
        'USER': 'default',
        'PASSWORD': 'secret',
        'HOST': 'postgres',
        'PORT': '5432',
    }
}
```

4. Run migrations:
```bash
docker-compose exec django python manage.py migrate
```

## Flask Example

### Basic Flask App

Create `app.py`:
```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

Start Flask:
```bash
docker-compose up -d flask
```

## FastAPI Example

### Basic FastAPI App

Create `main.py`:
```python
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
```

Start FastAPI:
```bash
docker-compose up -d fastapi
```

## Celery Example

### Basic Celery Setup

Create `celery_app.py`:
```python
from celery import Celery

app = Celery('tasks',
             broker='redis://redis:6379/0',
             backend='redis://redis:6379/0')

@app.task
def add(x, y):
    return x + y
```

Start Celery worker:
```bash
docker-compose up -d celery redis
docker-compose exec celery celery -A celery_app worker --loglevel=info
```

## Jupyter Example

### Using Jupyter Notebooks

1. Start Jupyter:
```bash
docker-compose up -d jupyter
```

2. Access at `http://localhost:8888`

3. Your notebooks will be saved in the mounted directory

## Database Connection Examples

### PostgreSQL with psycopg2

```python
import psycopg2

conn = psycopg2.connect(
    host="postgres",
    database="default",
    user="default",
    password="secret"
)
```

### MySQL with pymysql

```python
import pymysql

conn = pymysql.connect(
    host="mysql",
    user="default",
    password="secret",
    database="default"
)
```

### MongoDB with pymongo

```python
from pymongo import MongoClient

client = MongoClient("mongodb://default:secret@mongodb:27017/default")
db = client.default
```

### Redis with redis-py

```python
import redis

r = redis.Redis(host='redis', port=6379, db=0)
r.set('key', 'value')
value = r.get('key')
```

