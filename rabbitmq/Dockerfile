FROM rabbitmq:3-management-alpine

LABEL maintainer="Pydock Contributors"

# Enable management plugin
RUN rabbitmq-plugins enable rabbitmq_management

# Expose ports
EXPOSE 5672 15672

