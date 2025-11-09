FROM nginx:alpine

LABEL maintainer="PyDock Contributors"

# Copy custom configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Create directories
RUN mkdir -p /var/www && \
    mkdir -p /var/log/nginx

# Expose ports
EXPOSE 80 443

# Default command
CMD ["nginx", "-g", "daemon off;"]

