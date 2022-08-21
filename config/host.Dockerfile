FROM ruby:3.0.0

ENV RAILS_ENV production
RUN mkdir /workwork
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
WORKDIR /workwork
ADD Gemfile /workwork
ADD Gemfile.lock /workwork
ADD vendor/cache /workwork/vendor/cache
RUN bundle config set --local without 'development test'
RUN bundle install --local

ADD workwork-*.tar.gz ./
ENTRYPOINT bundle exec puma