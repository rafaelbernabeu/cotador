#!/bin/bash

heroku container:login && \
heroku container:push web -a cotador-super && \
heroku container:release web -a cotador-super

