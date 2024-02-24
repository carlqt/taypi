# Start from the official Ruby image
FROM ruby:3.2.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory
WORKDIR /app

# Add the Gemfile and Gemfile.lock
ADD Gemfile Gemfile.lock /app/

# Install gems
RUN bundle install

# Add the rest of the code
ADD . .

# Expose port 3000
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
