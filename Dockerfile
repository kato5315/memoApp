FROM ruby:2.6.5

ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client

RUN mkdir /apiproject
WORKDIR /apiproject

ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock

RUN bundle install

COPY . /apiproject