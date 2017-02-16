### Serveurs NodeJS load-balancés

Toujours un serveur nodeJS qui affiche le *hostname* du conteneur sur http://127.0.0.1:8081

Pour aumgmenter le nombre d'instances l'application : `docker-compose scale app=3`

Le dashboard de Traefik est à l'url : http://127.0.0.1:8080, sur lequel vous pouvez voir la courbe du temps de réponse moyen.

Vous pouvez "patater" le serveur grâce à des outils de benchmarking. Un simple est *siege* : 

```
siege -b -c 500 127.0.0.1:8081
```