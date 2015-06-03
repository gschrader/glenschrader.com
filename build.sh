#!/bin/bash
#fontcustom compile -c fontcustom.yml
$(docker-machine env dev)
docker build -t "gschrader/glenschradercom" .
