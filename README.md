# Mininet + Floodlight Controller

iPerf test over an OpenFlow network using Mininet and Floodlight Controller,
running with docker-compose

## Dependencies

- docker-ce 1.13.0+
- docker-compose 3

## Build and Run

```bash
git clone https://github.com/dlartigae/mininet-floodlight.git
cd docker
docker-compose build
docker-compose up --abort-on-container-exit
```

