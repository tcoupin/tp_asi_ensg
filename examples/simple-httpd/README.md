### Simple serveur HTTP

Juste un httpd qui affiche le *hostname* du conteneur sur http://127.0.0.1:8081

Tentez un `docker-compose scale httpd=3` : il y a un conflit de port. Il faut passer par un load balancer, voir l'exemple [lb-httpd](../lb-httpd).
