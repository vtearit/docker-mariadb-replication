# Run Container
up:
	docker-compose up -d
.PHONY: up

# Stop container
down:
	docker-compose down
.PHONY: down
