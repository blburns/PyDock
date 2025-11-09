ARG POSTGRES_VERSION=15

FROM postgres:${POSTGRES_VERSION}

LABEL maintainer="Pydock Contributors"

# Copy initialization scripts
COPY ./init /docker-entrypoint-initdb.d/

# Set default environment variables
ENV POSTGRES_DB=default \
    POSTGRES_USER=default \
    POSTGRES_PASSWORD=secret

