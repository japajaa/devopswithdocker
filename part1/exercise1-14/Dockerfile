FROM ubuntu:16.04
FROM ruby:2.6.0

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

ADD rails-example-project /rails-example-project
WORKDIR /rails-example-project

# COPY Gemfile Gemfile.lock ./
RUN bundle install

RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
# RUN gem install bundler
# RUN bundle install
RUN rails db:migrate
RUN rake assets:precompile

CMD rails s

EXPOSE 3000

