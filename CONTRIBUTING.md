# Contributing to Pydock

Thank you for considering contributing to Pydock! This document provides guidelines and instructions for contributing.

## How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## Code Style

- Follow PEP 8 style guide for Python code
- Use meaningful commit messages
- Add comments for complex logic
- Update documentation as needed

## Adding New Services

When adding a new service:

1. Create a directory for the service in the root directory
2. Add a `Dockerfile` for the service
3. Update `docker-compose.yml` to include the service
4. Add documentation in the `DOCUMENTATION` directory
5. Update the README if necessary

## Testing

Before submitting a PR:

- Test that the service builds correctly
- Test that the service starts and runs
- Update any relevant documentation

## Questions?

Feel free to open an issue for any questions or clarifications.

