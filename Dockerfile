FROM rubylang/ruby:master-nightly-focal
# FROM rubylang/ruby:master-nightly-focal # fails
# FROM rubylang/ruby:3.1.3-focal # passes
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev pkg-config
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
