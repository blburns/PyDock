# Web Servers

PyDock includes Nginx as a reverse proxy and web server.

## Nginx

Nginx is configured as a reverse proxy for Python applications.

**Features:**
- Reverse proxy configuration
- Static file serving
- Gzip compression
- Custom configuration support

**Usage:**
```bash
# Start Nginx
docker-compose up -d nginx

# Access at http://localhost:80
```

**Configuration:**
- Main config: `nginx/nginx.conf`
- Customize as needed for your application

**Default Configuration:**
- Listens on port 80
- Serves static files from `/var/www`
- Proxies `/api` requests to Python service

**Environment Variables:**
- `NGINX_HOST_HTTP_PORT`: HTTP port (default: 80)
- `NGINX_HOST_HTTPS_PORT`: HTTPS port (default: 443)

## Custom Nginx Configuration

Edit `nginx/nginx.conf` to customize:

```nginx
server {
    listen 80;
    server_name localhost;
    root /var/www;
    
    location / {
        proxy_pass http://python:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

## Application Servers

### Gunicorn (Django/Flask)

For production, use Gunicorn:

```bash
# Install in your requirements.txt
gunicorn

# Run Django
gunicorn myproject.wsgi:application --bind 0.0.0.0:8000

# Run Flask
gunicorn app:app --bind 0.0.0.0:5000
```

### Uvicorn (FastAPI)

FastAPI uses Uvicorn by default:

```bash
uvicorn main:app --host 0.0.0.0 --port 8000
```

