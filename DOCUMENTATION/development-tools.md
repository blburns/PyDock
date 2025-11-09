# Development Tools

PyDock includes several development tools to enhance your Python development workflow.

## Jupyter Notebook

Jupyter Notebook provides an interactive computing environment for Python.

**Features:**
- JupyterLab interface
- Pre-installed data science libraries (pandas, numpy, matplotlib, etc.)
- Persistent storage for notebooks

**Usage:**
```bash
# Start Jupyter
docker-compose up -d jupyter

# Access at http://localhost:8888
```

**Environment Variables:**
- `JUPYTER_PORT`: Port (default: 8888)
- `JUPYTER_TOKEN`: Access token (optional)

**Pre-installed Packages:**
- jupyter
- jupyterlab
- notebook
- ipykernel
- pandas
- numpy
- matplotlib
- seaborn
- scipy
- scikit-learn
- ipywidgets

## Workspace Container

The workspace container is a full-featured development environment.

**Features:**
- Multiple Python versions
- Development tools
- System utilities

**Pre-installed Tools:**
- IPython - Enhanced interactive Python shell
- ipdb - Python debugger
- pytest - Testing framework
- pytest-cov - Coverage plugin for pytest
- black - Code formatter
- flake8 - Linter
- mypy - Static type checker
- pylint - Code analyzer
- autopep8 - PEP 8 formatter
- isort - Import sorter
- bandit - Security linter
- safety - Dependency vulnerability checker

**Usage:**
```bash
# Access workspace shell
docker-compose exec workspace bash

# Run tests
docker-compose exec workspace pytest

# Format code
docker-compose exec workspace black .

# Lint code
docker-compose exec workspace flake8 .
```

## IPython

IPython is available in the workspace container for enhanced interactive Python sessions.

**Usage:**
```bash
docker-compose exec workspace ipython
```

## Debugging

### Using ipdb

```python
import ipdb; ipdb.set_trace()
```

### Using Python Debugger

```bash
docker-compose exec workspace python -m pdb your_script.py
```

## Testing

### pytest

```bash
# Run all tests
docker-compose exec workspace pytest

# Run with coverage
docker-compose exec workspace pytest --cov=.

# Run specific test file
docker-compose exec workspace pytest tests/test_example.py
```

## Code Quality

### Formatting

```bash
# Format with black
docker-compose exec workspace black .

# Sort imports
docker-compose exec workspace isort .
```

### Linting

```bash
# Run flake8
docker-compose exec workspace flake8 .

# Run pylint
docker-compose exec workspace pylint your_module.py

# Run mypy (type checking)
docker-compose exec workspace mypy your_module.py
```

### Security

```bash
# Check for security issues
docker-compose exec workspace bandit -r .

# Check dependencies for vulnerabilities
docker-compose exec workspace safety check
```

