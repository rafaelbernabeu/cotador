#!/bin/bash

docker-compose -f src/main/docker/docker-compose.yml run --rm build mvn package -Pnative
