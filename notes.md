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
## Lister les RPI d'un réseau

```
sudo nmap -sn 192.168.90.0/24 | grep -B 2 Raspberry  | grep -o -e "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" -e "B8:27:EB:.\{8\}" | tr '\n' ' ' | sed 's/\(B8:27:EB:.\{8\}\) /\1\n/g'
192.168.90.21 B8:27:EB:6F:B8:FC
192.168.90.91 B8:27:EB:29:78:05
192.168.90.92 B8:27:EB:27:F9:D3
```
