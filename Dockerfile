FROM rubylang/rubyfarm:7f1ca666424849134990d022266bcd4d6636465f
# FROM rubylang/rubyfarm:88c12a29372e3f908190c6af0aa1b2ac6b78fbd1 # passes
# FROM rubylang/rubyfarm:7f1ca666424849134990d022266bcd4d6636465f # fails
# FROM rubylang/ruby:master-nightly-focal # fails
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev pkg-config
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
RUN bundle install
