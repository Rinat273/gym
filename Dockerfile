FROM ruby:3.3.0-bullseye

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
      nodejs \
      less \
      cron \
      vim \
      nano \
      && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "gem: --no-rdoc --no-ri" > /etc/gemrc

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

RUN bundle install

COPY . /usr/src/app/

EXPOSE 3000

CMD ["bin/entrypoint.sh"]
