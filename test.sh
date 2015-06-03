#!/bin/bash
docker run -d --name glenschradercomtest -p 80:80 "gschrader/glenschradercom"
open http://docker.local
sleep 2s
docker kill glenschradercomtest
docker rm glenschradercomtest
