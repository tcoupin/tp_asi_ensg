# TP du cours d'architecture des systèmes d'informations pour l'ENSG

Les supports de cours :

- [ASI](https://tcoupin.github.io/presentations/asi-ensg)
- [Intro à Docker](https://tcoupin.github.io/presentations/docker-intro)
- [Docker-compose](https://tcoupin.github.io/presentations/docker-compose)

Les exemples pour docker-compose :

- **[simple-httpd](./examples/01-simple-httpd)** : démarrer un serveur web simple, *observer les difficultés de scaling*
- **[lb-httpd](./examples/02-lb-httpd)** : une distribution des requêtes HTTP sur plusieurs serveurs web, *répartition des ressources*
- **[system-probe](./examples/03-system-probe)** : un ensemble de collecter et afficher des métriques systèmes, *architecture par services*

## Les TPs

Les 3 activités ont pour but de faire manipuler docker en mettant en pratique certains principes d'architecture des SI.

Le but est de mettre en place ownCloud, un gestionnaire de fichier en ligne en 3 étapes.

L'image à utiliser est `owncloud`, disponible sur https://hub.docker.com/r/library/owncloud/. Cette page contient beaucoup de détails que vous pouvez trouver dans les métadonnées de l'image.

### Owncloud SQLite : 2 Tiers

Un seul conteneur : owncloud et la base sqlite.

Utiliser l'option `--cpu-quota=25000` de `docker run` pour limiter l'utilisation du CPU à 25% et simuler des limites matérielles.

Notre solution est (artificiellement) lente, il faudrait la répartir sur plusieurs instances pour utiliser plus de ressources.

**Identifier les limites techniques.**

### Owncloud MySQL : 3 Tiers

La base de donnée doit être déportée dans une instance séparée. L'image à utiliser est `mysql` ou `mariadb`.

### Cluster Owncloud MySQL : distribution

Pour utiliser plus de ressources, on va déployer plusieurs instances owncloud derrière un répartiteur de charge.

Pour le répartiteur, vous avez le choix entre :

- nginx (config statique)
- haproxy (config statique)
- traefik (config statique ou dynamique)

## Le projet

Nous avons 3,5 jours pour jouer avec une vingtaines de RaspeberryPi :)

### But du jeu : mettre en place une IDG (as a Service)

Fonctionnalités/contraintes :
- offre de service publique :
  - wms raster (rok4) / wms vecteur (Geoserver?)
  - site avec carte dynamique et un catalogue
- administration :
  - intégration de données vecteur/raster
  - suivi des consommations
  - si nécessaire, forge pour les builds des images docker
- infrastructure
  - suivi de l'état des RPI
  - élasticité
  - haute disponibilité et distribution
  - mise à jour des composants sans interuption de service

### Organisation

A vous de choisir comment vous organiser votre temps et vos ressources.

Je fournis les cartes SD prêtes : HypriotOS, Git et ce qui vous ferait plaisir.

### Rendu

Un dépôt Github :
- analyse
- proposition architecture et organisation de la conception et du build
- détails de chaque composant : solution, relation, risque
- procédures
- PAQ (sauvegarde, résilience, surface d'attaque...)
- script et config pour un redéploiement
- ...

La contribution de chacun sera évaluée.
