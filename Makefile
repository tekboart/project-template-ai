# ===============================
#  Project Makefile — ML/DL Template
# ===============================

# Variables
PYTHON := python
PROJECT := project_name
SRC_DIR := src/$(PROJECT)
TEST_DIR := tests
DOCS_DIR := docs

# Default target
.DEFAULT_GOAL := help

# ===============================
#  Commands
# ===============================

help:  ## Show this help
	@echo ""
	@echo "Available make commands:"
	@echo "  make install       - Install base dependencies"
	@echo "  make dev           - Install dev + pre-commit hooks"
	@echo "  make format        - Run Black and Ruff formatters"
	@echo "  make lint          - Check code style (Black, Ruff)"
	@echo "  make test          - Run tests with pytest"
	@echo "  make docs          - Build documentation with Sphinx"
	@echo "  make clean         - Clean build, cache, and pyc files"
	@echo ""

# ===============================
#  Installation & Setup
# ===============================

install:  ## Install main dependencies
	pip install -r requirements.txt

dev: install  ## Install dev dependencies and enable pre-commit
	pip install pre-commit
	pre-commit install
	pre-commit autoupdate

# ===============================
#  Code Quality
# ===============================

format:  ## Auto-format code with Black and Ruff
	black $(SRC_DIR) $(TEST_DIR)
	ruff check $(SRC_DIR) $(TEST_DIR) --fix

lint:  ## Check formatting & linting
	black --check $(SRC_DIR) $(TEST_DIR)
	ruff check $(SRC_DIR) $(TEST_DIR)

# ===============================
#  Testing
# ===============================

test:  ## Run pytest with warnings disabled
	pytest --disable-warnings -q

# ===============================
#  Documentation
# ===============================

docs:  ## Build HTML documentation using Sphinx
	$(MAKE) -C $(DOCS_DIR) html

# ===============================
#  Cleaning
# ===============================

clean:  ## Remove temporary files, caches, and build artifacts
	find . -type d -name "__pycache__" -exec rm -rf {} + || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + || true
	find . -type d -name ".ruff_cache" -exec rm -rf {} + || true
	rm -rf $(DOCS_DIR)/_build
	rm -rf .mypy_cache

# ===============================
#  Misc
# ===============================

run:  ## Run the main project (if main.py exists)
	$(PYTHON) $(SRC_DIR)/main.py
