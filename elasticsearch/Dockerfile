ARG ELASTICSEARCH_VERSION=8.11.0

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTICSEARCH_VERSION}

LABEL maintainer="Pydock Contributors"

# Set environment variables
ENV discovery.type=single-node \
    ES_JAVA_OPTS="-Xms512m -Xmx512m" \
    xpack.security.enabled=false

# Expose ports
EXPOSE 9200 9300

