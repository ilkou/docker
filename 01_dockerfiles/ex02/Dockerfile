FROM ruby:2.5.1

RUN apt-get update && apt-get install -y nodejs=4.8.2~dfsg-1 && rm -rf /var/lib/apt/lists/*
RUN gem install rails bundler

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

ONBUILD RUN bundler install
ONBUILD RUN rails db:migrate
ONBUILD RUN rails db:seed
