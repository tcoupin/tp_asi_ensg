# Playbooks ansible

## Ping

```
ansible all -i inventory -m ping
```

## Setup initial

```
ansible-playbook -i inventory playbooks/setup.yml
```
