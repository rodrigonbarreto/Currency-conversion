FROM ruby:2.3-slim
# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# set up path
ENV INSTALL_PATH /usr/src/app
# create folder
RUN mkdir -p $INSTALL_PATH
# set up principal folder
WORKDIR $INSTALL_PATH
# copy our Gemfile to inside container
COPY Gemfile ./
# Install  Gems
RUN bundle install
# Copy our code to container
COPY . .
# run puma server
CMD puma -C config/puma.rb
