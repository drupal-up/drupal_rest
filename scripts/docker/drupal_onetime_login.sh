#!/usr/bin/env sh

# The folder with the composer.json file in the context of wodby/docker4drupal.
cd /var/www/html/web

# Get one time login.
../vendor/bin/drush uli --uri=http://drupal_rest.docker.localhost:8000
