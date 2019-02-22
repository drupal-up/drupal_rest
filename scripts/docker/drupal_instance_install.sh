#!/usr/bin/env sh

# The folder with the composer.json file in the context of wodby/docker4drupal.
cd /var/www/html

composer install

# Changing to the Drupal web folder.
cd /var/www/html/web

# Installing Drupal with the default values from wodby/docker4drupal.
../vendor/bin/drush site:install --existing-config --db-url=mysql://drupal:drupal@mariadb:3306/drupal

# Clearing the cache.
../vendor/bin/drush cr

echo "Visit http://drupal.local/ for your local drupal setup."
