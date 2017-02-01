# Trucs utiles

## Connaître l'adresse mac d'un RPI

USB+ethernet sur le PC

```
sudo tcpdump -i eth0 | grep -o "b8:27:eb:..:..:.."
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on eth0, link-type EN10MB (Ethernet), capture size 262144 bytes
b8:27:eb:29:78:05
b8:27:eb:29:78:05
...
```
