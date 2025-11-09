# Task Queues

Pydock includes Celery and RabbitMQ for asynchronous task processing.

## Celery

Celery is a distributed task queue for Python.

**Features:**
- Async task execution
- Scheduled tasks
- Multiple broker support (Redis, RabbitMQ)

**Usage:**
```bash
# Start Celery with Redis
docker-compose up -d celery redis

# Start Celery worker
docker-compose exec celery celery -A your_app worker --loglevel=info

# Start Celery beat (scheduler)
docker-compose exec celery celery -A your_app beat --loglevel=info
```

**Configuration:**
```python
from celery import Celery

app = Celery('tasks',
             broker='redis://redis:6379/0',
             backend='redis://redis:6379/0')

@app.task
def add(x, y):
    return x + y
```

**Environment Variables:**
- `CELERY_BROKER`: Broker URL (default: redis://redis:6379/0)
- `CELERY_BACKEND`: Backend URL (default: redis://redis:6379/0)

## RabbitMQ

RabbitMQ is a message broker that can be used with Celery.

**Features:**
- Message queuing
- Management UI
- Multiple protocols support

**Usage:**
```bash
# Start RabbitMQ
docker-compose up -d rabbitmq

# Access management UI at http://localhost:15672
# Default credentials: guest/guest
```

**Ports:**
- `5672`: AMQP port
- `15672`: Management UI port

**Environment Variables:**
- `RABBITMQ_PORT`: AMQP port (default: 5672)
- `RABBITMQ_MANAGEMENT_PORT`: Management UI port (default: 15672)

## Using Celery with RabbitMQ

```python
from celery import Celery

app = Celery('tasks',
             broker='amqp://guest:guest@rabbitmq:5672//',
             backend='rpc://')

@app.task
def process_data(data):
    # Your task logic
    return result
```

## Monitoring

### Flower (Celery Monitoring)

Add Flower to your requirements.txt:
```
flower
```

Run Flower:
```bash
docker-compose exec celery celery -A your_app flower
```

Access at `http://localhost:5555`

