### Simple serveur

Juste un serveur nodeJS qui affiche le *hostname* du conteneur sur http://127.0.0.1:8081

Tentez un `docker-compose scale app=3` : il y a un conflit de port. Il faut passer par un load balancer, voir l'exemple [lb-app](../02-lb-app).


Voir plus de détails de l'application dans le dossier [print-hostname](../print-hostname).