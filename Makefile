.PHONY: install clean test run-notebooks run-pipeline

install:
    pip install -e .[dev]

clean:
    find . -type d -name "__pycache__" -exec rm -rf {} +
    find . -type f -name "*.pyc" -delete

test:
    pytest tests/ -v

run-pipeline:
    python scripts/run_full_pipeline.py

run-notebooks:
    jupyter notebook notebooks/
