# LocalZero Wahlrechner

Dies ist ein Fork der Docker Compose Umgebung [Wahlrechner-Server](https://github.com/wahlrechner/server), lizensiert unter GPL3.
Die Wahlrechner Django-App ist ebenfalls ein Fork: [Wahlrechner](https://github.com/vpfarr/wahlrechner).

## Setup

```
git clone <...>
git submodule init
git submodule update --init --recursive
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
docker-compose build
docker-compose up -d
```

## Neue Instanzen hinzufügen

1. Configfile anlegen unter `config/config_<name>.env`, analog zu dem Beispielfile. Wichtig ist der Name in `URL_PREFIX`.
2. im `caddy/Caddyfile` einen neuen `# instance` Abschnitt mit Routen für die neue Instanz anlegen, wichtig ist, dass der gleiche Name wie in 1. verwendet wird.
3. in `docker-compose.yml` nach den kommentierten Abschnitten mit `# instance` Suchen und diese kopieren. Die Pfade anpassen auf den Name in 1.
4. die Compose Services beenden `docker-compse down` und neu starten `docker-compose up -d`.