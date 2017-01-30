### Serveurs HTTP load-balancés

Toujours un httpd qui affiche le *hostname* du conteneur sur http://127.0.0.1:8081

Pour aumgmenter le nombre d'instances de httpd : `docker-compose scale httpd=3`

Le dashboard de Traefik est à l'url : http://127.0.0.1:8080