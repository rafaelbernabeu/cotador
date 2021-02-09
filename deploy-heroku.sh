#!/bin/bash

docker build -f src/main/docker/Dockerfile.heroku -t cotador-nativo .
heroku container:push web -a cotador-nativo
heroku container:release web -a cotador-nativo

