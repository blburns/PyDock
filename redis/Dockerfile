ARG REDIS_VERSION=7.2

FROM redis:${REDIS_VERSION}-alpine

LABEL maintainer="Pydock Contributors"

# Copy custom configuration if needed
COPY redis.conf /usr/local/etc/redis/redis.conf

# Use custom configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

