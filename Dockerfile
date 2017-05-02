FROM ruby:2.3-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential nodejs libpq-dev

COPY Gemfile /usr/src/app/

RUN bundle install

COPY . /usr/src/app

EXPOSE 3000

#CMD ["rails", "server", "-b", "0.0.0.0"]
CMD puma -C config/puma.rb
