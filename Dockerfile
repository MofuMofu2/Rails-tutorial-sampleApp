FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install nokogiri
RUN gem install nio4r
RUN gem install websocket-driver
RUN gem install bcrypt
RUN gem install bindex
RUN gem install msgpack
RUN bundle install
COPY . /myapp
ADD start.sh /myapp/bin/start.sh
RUN chmod +x /myapp/bin/start.sh
EXPOSE 3000
CMD [ "bin/start.sh"]