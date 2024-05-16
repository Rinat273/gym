#!/bin/bash

# Stops the execution of a script in case of error
set -e

bundle exec rake db:create
bundle exec rake db:migrate
# bundle exec rake db:seed
bundle exec bundle install

rm -f /usr/src/app/tmp/pids/server.pid

exec bin/rails s -b 0.0.0.0
