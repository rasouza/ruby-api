FROM ruby:2.6.2

# Installing application dependencies
RUN apt-get update
RUN apt-get install nodejs -y

ENV APP_HOME /usr/src/app/
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME
RUN bundle install

COPY . $APP_HOME
