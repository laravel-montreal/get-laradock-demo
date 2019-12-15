## À propos de Get Laradock Demo

Get Laradock permet d'installer et de configurer Laradock rapidement pour des fins d'exploration et de familiarisation.

Ce dépôt a été monté spécifiquement dans le cadre d'une présentation à Laravel Montréal le 16 décembre 2019:

* les configurations sont codées en dur

* la configuration proposée s'applique au stade de dévelopement seulement

* l'utilisation de cette configuration en production mènerait à de sérieuses failles de sécurité. N'y penses même pas.

## Requis techniques

Environement *nix

Git

Docker >= 17.12

## Structure des répertoires

Get Laradock présume la structure de répertoires suivante:

``` bash
|-- get-laradock-demo
|   |-- laradock
|-- santa-locator
```

## Installation

``` bash
git clone https://github.com/ctrlwebinc/santa-locator
cd getlaradock
bash setup.sh
```

## Utilisation

Voici comment faire les étapes habituelles de développement Laravel.
Les commandes suivantes devraient être exécutées depuis le répertoire laradock.

### Voir les services qui tournent

``` bash
docker-compose ps
```

### Faire les migrations

``` bash
docker-compose exec workspace bash
php artisan migrate
```

### Lancer phpmyadmin

``` bash
docker-compose up -d phpmyadmin
```

### Relancer Laradock suite à un changement de configuration

``` bash
docker-compose up --build -d nginx mysql workspace
```

### Arrêter les services et retirer les conteneurs

``` bash
docker-compose down
```

## Dépannage

### Le projet Laravel ne peut pas se connecter à sa BD ?

Utilises-tu mysql comme DB_HOST dans ton environement de projet Laravel ?

Utilises-tu l'utilisateur default et le mot de passe secret ?


``` bash
DB_HOST=mysql
DB_USERNAME=default
DB_PASSWORD=secret
```

### Tu n'arrives pas à te connecter à la BD avec SequelPro ?

Utilises-tu bien 127.0.0.1 comme hôte ?

### Tu n'arrive pas à te connecter à la BD avec phpmyadmin ?

Utilises-tu bien mysql comme hôte ?

### Ton projet ne s'affiche pas à http://127.0.0.1 ?

Assures-toi que Homestead ou Valet ne roule pas en parallèle.