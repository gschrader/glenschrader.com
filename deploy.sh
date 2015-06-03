#!/bin/bash
#fontcustom compile -c fontcustom.yml
eval $(docker-machine env docker2)
#$(docker-machine env docker2)
docker build -t "gschrader/glenschradercom" .
docker kill glenschradercom
docker rm glenschradercom
docker run -e VIRTUAL_PORT=80 -e LETSENCRYPT_HOST=glenschrader.com -e LETSENCRYPT_EMAIL=gschrader@gmail.com -e VIRTUAL_HOST=glenschrader.com --name glenschradercom -d "gschrader/glenschradercom"
