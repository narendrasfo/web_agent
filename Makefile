# Variables
DOCKER_COMPOSE = docker-compose
APP_NAME = flask-mongo-app
IMAGE_NAME = flask-mongo-app
TAG = latest
VENV_NAME = .venv

# Targets
.PHONY: setup build start stop clean deploy

# Set up local environment (create virtualenv, install dependencies, create directories, etc.)
setup:
	@echo "Setting up local environment..."
	python3 -m venv $(VENV_NAME)
	. $(VENV_NAME)/bin/activate && pip install --upgrade pip
	. $(VENV_NAME)/bin/activate && pip install -r requirements.txt
	@echo "Setup complete. Virtual environment created in $(VENV_NAME). Activate it using 'source $(VENV_NAME)/bin/activate'."


clean:
	@echo "Cleaning up..."
	rm -rf $(VENV_NAME)
	@echo "Cleanup complete."

