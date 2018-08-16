FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
EXPOSE 80
CMD ["rails", "server", "-b", "0.0.0.0"]