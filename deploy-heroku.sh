#!/bin/bash

heroku container:push web -a cotador-super
heroku container:release web -a cotador-super

