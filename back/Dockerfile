FROM ruby:2.7.0-slim

# Install dependencies
RUN apt-get update -qq; \
    apt-get install -y build-essential \
                       libpq-dev;

# Setup Workdir
RUN mkdir /app
WORKDIR /app

ENV RAILS_ENV=development

# Cache gems
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Install gems
RUN bundle install
COPY . /app

RUN mkdir -p tmp/pids

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["entrypoint.sh"]

# Start the main process.
CMD ["bundle", "exec", "puma"]