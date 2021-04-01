#!/bin/bash

rm src/main/resources/META-INF/resources/favicon.ico
rm src/main/resources/META-INF/resources/index.html
rm src/main/resources/META-INF/resources/main.*.js
rm src/main/resources/META-INF/resources/runtime.*.js
rm src/main/resources/META-INF/resources/polyfills.*.js
rm src/main/resources/META-INF/resources/styles.*.css
rm src/main/resources/META-INF/resources/3rdpartylicenses.txt

cd ../cotador-app
ng build --prod

cp dist/cotador-app/* ../cotador/src/main/resources/META-INF/resources
cd -

./build-native.sh && ./deploy-heroku.sh
