# Stage 1: Build
FROM alpine:3.21 AS build

# Install build dependencies
RUN apk add --no-cache \
    git \
    build-base \
    ruby \
    ruby-dev \
    ruby-bundler \
    jekyll

# Install Jekyll and Bundler
RUN gem install --no-document jekyll bundler

WORKDIR /app

COPY . .

# Install gems (clean cache afterwards)
RUN bundle install && \
    rm -rf /usr/local/bundle/cache

# Expose Jekyll default port
EXPOSE 4000 35729

# Run with live reload and polling (better for Docker volumes)
CMD ["bundle", "exec", "jekyll", "serve", \
     "--host", "0.0.0.0", \
     "--livereload", \
     "--force_polling", \
     "--verbose"]