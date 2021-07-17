# docker-boilerplate-symfony
[![](https://img.shields.io/badge/PHP-8-blue)](https://www.php.net/releases/8.0/en.php) [![](https://img.shields.io/badge/Symfony-5.3-blue)](https://symfony.com/releases/5.3)

# Prérequis
- Docker
- Docker compose

# Installation
```shell
git clone https://github.com/FabienVINCENT/docker-boilerplate-symfony.git
mv docker-boilerplate-symfony myProject  
cd myProject  
git remote remove origin  
git remote add origin https://github.com/USERNAME/REPONAME.git
git push -u origin
```

# Lancer l'environnement
Monter les containers
```shell
docker-compose up -d
```

Installer les dépendances

```shell
make composer-install
```

# Instructions
- Les commandes Symfony sont à lancer sur le container
```shell
make bash
$php bin/console doctrine:schema:update --force
```

- Ou
```shell
docker-compose exec php php bin/console doctrine:schema:update --force
```