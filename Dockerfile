FROM ruby:3.0.2

RUN gem install bundler:2.3.25

WORKDIR /srv/jekyll

COPY . .

RUN bundle install

CMD ["jekyll", "serve", "--host", "0.0.0.0"]

