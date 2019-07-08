FROM ruby:2.6
LABEL maintainer="Dan Itsara <dan@glazziq.com>"

# Node and Yarn
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - &&\
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list &&\
  apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold" &&\
  apt-get install -y build-essential libpq-dev nodejs yarn=1.7.0-1 &&\
  apt-get autoclean

# Get security updates
RUN gem install bundler:'~> 1.0'
