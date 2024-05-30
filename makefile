#!make

# include environments
include .env


# default command
default: help

up: ## run containers
	@echo "docker compose up:"
	docker compose up -d
	@echo "done!"

ps: ## show running containers
	@echo ""
	docker ps
	@echo ""

ps-a: ## show all containers whether there're running or not
	@echo ""
	docker ps -a
	@echo ""

down: ## stop containers
	@echo "stopping containers:"
	docker compose down
	@echo "done!"

down-volumes: ## stop containers & remove volumes
	@echo "stopping containers & volumes:"
	docker compose down --volumes
	@echo "done!"



# makefile help
help:
	@echo "usage: make [command]"
	@echo ""
	@echo "available commands:"
	@sed \
    		-e '/^[a-zA-Z0-9_\-]*:.*##/!d' \
    		-e 's/:.*##\s*/:/' \
    		-e 's/^\(.\+\):\(.*\)/$(shell tput setaf 6)\1$(shell tput sgr0):\2/' \
    		$(MAKEFILE_LIST) | column -c2 -t -s :
