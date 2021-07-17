.PHONY: bash
bash: ## Connexion au container
	@docker-compose exec -u 1000:1000 php bash

.PHONY: composer-install
composer-install: ## Import les données
	@docker-compose exec -u 1000:1000 php composer install

