# PyDock

**Full Python development environment based on Docker.**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

#### Use Docker First - Learn About It Later!

PyDock Documentation: [DOCUMENTATION](DOCUMENTATION)

---

## What is PyDock?

PyDock is a Docker-based Python development environment that provides pre-configured Docker containers for Python development. It's inspired by Laradock but tailored specifically for Python developers.

## Features

- 🐍 **Multiple Python Versions** - Support for Python 3.8, 3.9, 3.10, 3.11, 3.12
- 🚀 **Popular Frameworks** - Pre-configured containers for Django, Flask, FastAPI
- 🗄️ **Databases** - PostgreSQL, MySQL, MongoDB, Redis, SQLite
- 🔧 **Development Tools** - Jupyter Notebooks, IPython, pytest
- 📦 **Task Queues** - Celery, RabbitMQ, Redis
- 🌐 **Web Servers** - Nginx, Gunicorn, Uvicorn
- 📊 **Monitoring** - Prometheus, Grafana
- 🔍 **Search** - Elasticsearch
- 🧪 **Testing** - pytest, coverage, tox

## Quick Start

1. Clone this repository:
```bash
git clone https://github.com/yourusername/pydock.git
cd pydock
```

2. Copy the environment file:
```bash
cp .env.example .env
```

3. Start the services you need:
```bash
docker-compose up -d python postgres redis
```

4. Access your application:
- Python: `http://localhost:8000`
- Jupyter: `http://localhost:8888`
- PostgreSQL: `localhost:5432`

## Requirements

- Docker >= 20.10
- Docker Compose >= 2.0

## Documentation

Full documentation is available in the [DOCUMENTATION](DOCUMENTATION) directory.

## Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by [Laradock](https://github.com/laradock/laradock)
- Built for the Python community

