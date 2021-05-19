# cotador-super back-end project

This project uses Quarkus, the Supersonic Subatomic Java Framework.

If you want to learn more about Quarkus, please visit its website: https://quarkus.io/ .

## Before running
The application needs a valid jdbc url connection to to run.
Configure by changing the application.properties file or set in the environment variables.

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:
```shell script
mvn compile quarkus:dev
```
---

## Compile application in native mode
```shell script
docker-compose -f src/main/docker/docker-compose.yml run --rm build mvn package -Pnative
```