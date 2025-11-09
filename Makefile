.PHONY: help build up down restart logs shell clean

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build all containers
	docker-compose build

up: ## Start all services
	docker-compose up -d

down: ## Stop all services
	docker-compose down

restart: ## Restart all services
	docker-compose restart

logs: ## View logs for all services
	docker-compose logs -f

shell-workspace: ## Access workspace shell
	docker-compose exec workspace bash

shell-python: ## Access Python container shell
	docker-compose exec python bash

shell-django: ## Access Django container shell
	docker-compose exec django bash

shell-flask: ## Access Flask container shell
	docker-compose exec flask bash

shell-fastapi: ## Access FastAPI container shell
	docker-compose exec fastapi bash

clean: ## Remove all containers and volumes
	docker-compose down -v
	docker system prune -f

ps: ## Show running containers
	docker-compose ps

# Django commands
django-migrate: ## Run Django migrations
	docker-compose exec django python manage.py migrate

django-makemigrations: ## Create Django migrations
	docker-compose exec django python manage.py makemigrations

django-createsuperuser: ## Create Django superuser
	docker-compose exec django python manage.py createsuperuser

django-shell: ## Access Django shell
	docker-compose exec django python manage.py shell

# Database commands
postgres-psql: ## Access PostgreSQL shell
	docker-compose exec postgres psql -U default -d default

mysql-shell: ## Access MySQL shell
	docker-compose exec mysql mysql -u default -p default

mongodb-shell: ## Access MongoDB shell
	docker-compose exec mongodb mongosh -u default -p secret

redis-cli: ## Access Redis CLI
	docker-compose exec redis redis-cli

# Development
jupyter: ## Start Jupyter Notebook
	docker-compose up -d jupyter
	@echo "Jupyter available at http://localhost:8888"

test: ## Run tests
	docker-compose exec workspace pytest

lint: ## Run linters
	docker-compose exec workspace flake8 .
	docker-compose exec workspace black --check .
	docker-compose exec workspace isort --check .

format: ## Format code
	docker-compose exec workspace black .
	docker-compose exec workspace isort .

