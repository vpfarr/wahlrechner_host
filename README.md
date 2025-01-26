# LocalZero Wahlrechner

Basiert auf der compose-Umgebung [Wahlrechner-Server](https://github.com/wahlrechner/server), lizensiert unter GPL3.
Benutzt das Image wahlrechner, welches die Django-App [Wahlrechner](https://github.com/wahlrechner/wahlrechner) containerisiert, lizensiert unter GPL3.

Setup:
```
git clone <...>
git submodule init # ggf. git init
git submodule update # git submodule update --init --recursive # auf beiden Instanzen
docker-compose build
docker-compose up -d
```
