.DEFAULT_GOAL := help

.PHONY: help

help:
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

debug: ## Runs the docker-compose beta file
	@docker compose -f ./docker-compose-debug.yml up

undebug: ## Runs the docker-compose beta file
	@docker compose -f ./docker-compose-debug.yml down

dev: ## Runs the docker-compose debug file
	@docker compose up

undev: ## Runs the docker-compose debug file
	@docker compose down

test: ## Runs the test from the docker-compose container
	@docker compose exec fuel pytest
