#!/usr/bin/env bash
# exit on error
set -o errexit
apt -y install libpoppler-glib-dev
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate:reset
bundle exec rake db:seed