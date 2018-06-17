FROM ruby:2.6-rc-slim

MAINTAINER wmuengineer "https://github.com/wmuengineer"

# Install packages for building ruby
RUN apt-get update
RUN apt-get install -y --force-yes build-essential wget git
RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev git

RUN apt-get clean

RUN gem update --system
RUN gem install bundler

RUN git clone https://github.com/travis-ci/docker-sinatra /root/sinatra
RUN cd /root/sinatra; bundle install

EXPOSE 4567
