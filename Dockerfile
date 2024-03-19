FROM ruby:2.7.4

RUN apt-get update && apt-get install -y mariadb-client

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler -v 2.2.29 && bundle install -j4
EXPOSE  3000
VOLUME /app
