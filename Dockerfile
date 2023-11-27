FROM ruby:3-alpine3.17 as jekyll

RUN apk add --no-cache g++ gcc make musl-dev

WORKDIR /tmp
COPY Gemfile /tmp/Gemfile
RUN bundle install

COPY . /tmp
RUN rm Gemfile.lock

RUN jekyll build

# nginx
FROM nginx:alpine as nginx

COPY --from=jekyll /tmp/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=jekyll /tmp/_site/ /var/www/public/
