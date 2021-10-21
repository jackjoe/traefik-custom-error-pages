FROM ruby:2.7.0-alpine3.11 as jekyll

WORKDIR /tmp
COPY . /tmp
RUN rm Gemfile.lock

RUN apk add --no-cache g++ gcc make musl-dev
RUN bundle install
RUN jekyll build

# nginx
FROM nginx:alpine as nginx

COPY --from=jekyll /tmp/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=jekyll /tmp/_site/ /var/www/public/
