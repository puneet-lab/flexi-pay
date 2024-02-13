# Makefile for Flexi-Pay application

# Start the entire stack using Docker Compose
start:
	docker-compose up --build

# Start only the frontend service
frontend:
	docker-compose up --build web

# Start only the backend service
backend:
	docker-compose up --build backend

# Stop the entire stack
stop:
	docker-compose down

# View logs for all services
logs:
	docker-compose logs -f

# View logs for the frontend service
logs-frontend:
	docker-compose logs -f web

# View logs for the backend service
logs-backend:
	docker-compose logs -f backend

# Rebuild and restart a specific service (e.g., make rebuild service=backend)
rebuild:
	docker-compose up --build -d --no-deps $(service)

# Run a bash shell inside the backend container (useful for debugging)
shell-backend:
	docker-compose exec backend /bin/bash

# Run a bash shell inside the frontend container
shell-frontend:
	docker-compose exec web /bin/bash
