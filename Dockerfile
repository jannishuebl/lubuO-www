FROM ruby:2.4-slim
WORKDIR /code
RUN apt-get update -y && \
    apt-get install -y git-core build-essential libcurl4-openssl-dev
RUN gem install jekyll
ADD docker-entrypoint /
ENTRYPOINT ["/bin/sh", "/docker-entrypoint"]