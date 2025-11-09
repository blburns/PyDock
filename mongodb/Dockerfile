ARG MONGODB_VERSION=7.0

FROM mongo:${MONGODB_VERSION}

LABEL maintainer="Pydock Contributors"

# Copy initialization scripts
COPY ./init /docker-entrypoint-initdb.d/

# Set default environment variables
ENV MONGO_INITDB_ROOT_USERNAME=default \
    MONGO_INITDB_ROOT_PASSWORD=secret \
    MONGO_INITDB_DATABASE=default

