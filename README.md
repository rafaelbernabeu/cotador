# cotador-super project

# Front-end 
## https://github.com/rafaelbernabeu/cotador-app
Aplicaçao front-end do projeto cotador:

    - Angular 11, NPM.

Antes de executar pela primeira vez: npm install
Executar em modo dev: ng serve --proxy-config proxy.conf.js --host=0.0.0.0 --disable-host-check
Compilar o projeto para prod: ng build --prod


# Back-end 
## https://github.com/rafaelbernabeu/cotador
Aplicaçao back-end do projeto cotador.

    - Quarkus, Maven.

Necessita de um banco de dados MySQL.
    Para configurar a conexao ao banco, utilize o arquivo "application.properties"

Para subir um banco de dados via docker, utilize o script: https://github.com/rafaelbernabeu/docker-spells/blob/master/mysql/run.sh
Leia o readme para mais informações.

O sistema utiliza o framework Quarkus e seus modulos:
```
    - agroal, 
    - cdi,
    - hibernate-orm,
    - hibernate-orm-panache,
    - hibernate-orm-rest-data-panache,
    - jdbc-mysql,
    - mutiny,
    - narayana-jta,
    - resteasy,
    - resteasy-jackson,
    - security,
    - security-jpa,
    - smallrye-context-propagation,
    - smallrye-jwt,
    - vertx,
    - vertx-web
```

O Hibernate esta configurado para criar automaticamente o banco de dados.
Essa e outras configurações podem ser alteradas no arquivo "application.properties"

Para executar a aplicação:
```shell script
mvn compile quarkus:dev
```

# Infra

Atualmente o projeto e compilado seguindos os passos abaixo:
1) Compilar o front-end (ng build --prod)
2) Mover os recursos gerados pela build do front-end para a pasta "src/main/resources/META-INF/resources" do modulo back-end.
3) Compilar o back-end (mvn package ou mvn package -Pnative) (build-native.sh)
Obs.: Para compilar o back-end em modo nativo, sera necessario utilizar o script build-native.sh, que sobre uma GraalVM, necessario pelo Quarkus.
4) Gerar um container com o jar ou executavel gerado pelo modulo backend. (src/main/docker/Dockerfile.heroku)

O Quarkus ira servir a pagina index.html da pasta resources que por sua vez, inicia o Angular.

Os passos acima foram automatizados no scrip: build-and-deploy.sh
