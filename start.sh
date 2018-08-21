#!/bin/bash

bundle exec rake db:migrate RAILS_ENV=production
bundle exec rails server -e production