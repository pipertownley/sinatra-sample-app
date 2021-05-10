# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y postgresql-client
COPY ./src /app/src
WORKDIR /app/src
RUN bundle install
EXPOSE 3000-9292

# Configure the main process to run when running the image
CMD ["bundle", "exec", "rackup"]
