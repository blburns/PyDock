ARG MYSQL_VERSION=8.0

FROM mysql:${MYSQL_VERSION}

LABEL maintainer="Pydock Contributors"

# Copy initialization scripts
COPY ./init /docker-entrypoint-initdb.d/

# Set default environment variables
ENV MYSQL_DATABASE=default \
    MYSQL_USER=default \
    MYSQL_PASSWORD=secret \
    MYSQL_ROOT_PASSWORD=root

