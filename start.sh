#!/bin/bash

export SECRET_KEY_BASE=`bundle exec rake secret`
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rails server -e production