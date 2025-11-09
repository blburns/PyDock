# Database Services

PyDock includes pre-configured containers for popular databases.

## PostgreSQL

**Version:** 15 (configurable)

**Default Credentials:**
- Database: `default`
- User: `default`
- Password: `secret`
- Port: `5432`

**Usage:**
```bash
# Start PostgreSQL
docker-compose up -d postgres

# Connect using psql
docker-compose exec postgres psql -U default -d default

# Connect from Python
# Connection string: postgresql://default:secret@postgres:5432/default
```

**Environment Variables:**
- `POSTGRES_DB`: Database name
- `POSTGRES_USER`: Database user
- `POSTGRES_PASSWORD`: Database password
- `POSTGRES_PORT`: Port (default: 5432)

## MySQL

**Version:** 8.0 (configurable)

**Default Credentials:**
- Database: `default`
- User: `default`
- Password: `secret`
- Root Password: `root`
- Port: `3306`

**Usage:**
```bash
# Start MySQL
docker-compose up -d mysql

# Connect using mysql client
docker-compose exec mysql mysql -u default -p default

# Connect from Python
# Connection string: mysql://default:secret@mysql:3306/default
```

**Environment Variables:**
- `MYSQL_DATABASE`: Database name
- `MYSQL_USER`: Database user
- `MYSQL_PASSWORD`: Database password
- `MYSQL_ROOT_PASSWORD`: Root password
- `MYSQL_PORT`: Port (default: 3306)

## MongoDB

**Version:** 7.0 (configurable)

**Default Credentials:**
- Database: `default`
- User: `default`
- Password: `secret`
- Port: `27017`

**Usage:**
```bash
# Start MongoDB
docker-compose up -d mongodb

# Connect using mongo shell
docker-compose exec mongodb mongosh -u default -p secret

# Connect from Python
# Connection string: mongodb://default:secret@mongodb:27017/default
```

**Environment Variables:**
- `MONGODB_DATABASE`: Database name
- `MONGODB_USER`: Database user
- `MONGODB_PASSWORD`: Database password
- `MONGODB_PORT`: Port (default: 27017)

## Redis

**Version:** 7.2 (configurable)

**Port:** `6379`

**Usage:**
```bash
# Start Redis
docker-compose up -d redis

# Connect using redis-cli
docker-compose exec redis redis-cli

# Connect from Python
# Connection string: redis://redis:6379/0
```

**Environment Variables:**
- `REDIS_PORT`: Port (default: 6379)

## Initialization Scripts

You can add initialization scripts to:
- `postgres/init/` - SQL scripts for PostgreSQL
- `mysql/init/` - SQL scripts for MySQL
- `mongodb/init/` - JavaScript scripts for MongoDB

Scripts in these directories will be executed when the database is first initialized.

