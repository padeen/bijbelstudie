FROM ruby:3.3.0

RUN gem install nokogiri

WORKDIR /usr/src/app

CMD ["irb", "--simple-prompt"]
