# LocalZero Wahlrechner

Basiert auf der compose-Umgebung [Wahlrechner-Server](https://github.com/wahlrechner/server), lizensiert unter GPL3.
Benutzt das Image wahlrechner, welches die Django-App [Wahlrechner](https://github.com/wahlrechner/wahlrechner) containerisiert, lizensiert unter GPL3.

Setup:
```
git clone <...>
git submodule init
git submodule update
docker-compose build
docker-compose up -d
```